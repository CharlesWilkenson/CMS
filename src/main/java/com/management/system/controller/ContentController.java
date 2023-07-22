package com.management.system.controller;

import com.management.system.dto.request.ContentRequestDTO;
import com.management.system.dto.response.ContentResponseDTO;
import com.management.system.dto.response.ResponseDTO;
import com.management.system.entities.Content;
import com.management.system.service.ContentService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.http.HttpStatus.BAD_REQUEST;

@RestController
@RequestMapping("/api/content/management/service/contents/")
@RequiredArgsConstructor
public class ContentController {
    private final ContentService contentService;
    private final ModelMapper mapper;

    @PostMapping(value = "add", consumes = {MediaType.APPLICATION_JSON_VALUE})
    @ResponseStatus(BAD_REQUEST)
    public ResponseEntity<ResponseDTO<Object>> create(@Valid @RequestBody ContentRequestDTO content) {
        try {
            contentService.create(mapper.map(content, Content.class));
        } catch (Exception e) {
            return ResponseEntity.ok(ResponseDTO.createErrorResponse(HttpStatus.EXPECTATION_FAILED, "Failed to add new content"));
        }
        return ResponseEntity.ok(ResponseDTO.createSuccessResponse(HttpStatus.CREATED, "Content created successfully"));
    }

    @GetMapping("view-content/{id}")
    public ResponseEntity<ResponseDTO<ContentResponseDTO>> viewContent(@PathVariable Long id) {
        ContentResponseDTO dto = mapper.map(contentService.viewContent(id), ContentResponseDTO.class);
        ResponseDTO<ContentResponseDTO> responseDTO = new ResponseDTO<>();
        responseDTO.setData(dto);
        return ResponseEntity.ok(responseDTO);

    }

    @PutMapping("edit")
    public ResponseEntity<Object> editContent(@Valid @RequestBody ContentRequestDTO content) {
        try {
            contentService.editContent(mapper.map(content, Content.class));
        } catch (Exception e) {
            return ResponseEntity.ok(ResponseDTO.createErrorResponse(HttpStatus.EXPECTATION_FAILED, "Failed to update content"));
        }
        return ResponseEntity.ok(ResponseDTO.createSuccessResponse(HttpStatus.CREATED, "Content updated successfully"));
    }

    @DeleteMapping("delete/{id}")
    public ResponseEntity<Object> deleteContent(@PathVariable Long id) {
        try {
            contentService.deleteContent(id);
        } catch (Exception e) {
            return ResponseEntity.ok(ResponseDTO.createErrorResponse(HttpStatus.EXPECTATION_FAILED, "Failed to delete content"));
        }
        return ResponseEntity.ok(ResponseDTO.createSuccessResponse(HttpStatus.CREATED, "Content deleted successfully"));
    }

    @GetMapping
    public ResponseEntity<ResponseDTO<List<ContentResponseDTO>>> getContents() {
        List<ContentResponseDTO> contentResponseDTOList = contentService.getContents().stream().map(c -> mapper.map(c, ContentResponseDTO.class)).toList();
        ResponseDTO<List<ContentResponseDTO>> responseDTO = new ResponseDTO<>();
        responseDTO.setData(contentResponseDTOList);
        return ResponseEntity.ok(responseDTO);
    }

}
