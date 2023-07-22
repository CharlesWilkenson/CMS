package com.management.system.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_content")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Content extends AbstractAuditingEntity{
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String brief;

    @Column(nullable = false)
    private String content;

    @ManyToOne
    private Member authorId;

}
