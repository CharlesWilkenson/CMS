package com.management.system.service;

import com.management.system.entities.Content;

import java.util.List;

public interface ContentService {
    Content create(Content content);

    Content viewContent(Long id);

     Content editContent(Content content);

     void deleteContent(Long id);

     List<Content> getContents();
}
