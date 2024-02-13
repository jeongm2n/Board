package com.board.demo.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@ToString
@Entity
public class Writing {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long no;
    @Column
    private String title;
    @Column
    private String contents;
    @Column
    private String writer;
    @Column
    private String write_date;

    public void patch(Writing writing) {
        if(writing.title != null){
            this.title = writing.title;
        }
        if(writing.contents != null){
            this.contents = writing.contents;
        }
        if(writing.writer != null){
            this.writer = writing.writer;
        }
        if(writing.write_date != null){
            this.write_date = writing.write_date;
        }
    }
}
