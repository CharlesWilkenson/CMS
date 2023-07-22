package com.management.system.service.impl;

import com.management.system.entities.Content;
import com.management.system.entities.Member;
import com.management.system.exception.ResourceNotFoundException;
import com.management.system.repository.ContentRepository;
import com.management.system.repository.MemberRepository;
import com.management.system.service.ContentService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ContentServiceImpl implements ContentService {
    private final ContentRepository repository;
    private final MemberRepository memberRepository;

    @Override
    public Content create(Content content) {
        String email = SecurityContextHolder.getContext().getAuthentication().getName();
        Member member = memberRepository.findByEmail(email).orElseThrow(() -> new ResourceNotFoundException("Could find content with id:"));
        content.setAuthorId(member);
        return repository.save(content);
    }

    @Override
    public Content viewContent(Long id) {
        Content content = repository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Could find content with id:" + id));
        return content;
    }

    @Override
    public Content editContent(Content content) {
        Content ct = viewContent(content.getId());
        ct.setContent(content.getContent());
        ct.setBrief(content.getBrief());
        ct.setTitle(content.getTitle());
        ct.setUpdateTime(content.getUpdateTime());
        return repository.save(ct);
    }

    @Override
    public void deleteContent(Long id) {
        Content ct = viewContent(id);
        repository.delete(ct);
    }

    @Override
    public List<Content> getContents() {
        return repository.findAll();
    }
}
