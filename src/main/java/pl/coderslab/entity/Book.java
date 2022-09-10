package pl.coderslab.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.validator.constraints.Range;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "books")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;
  @Size(min = 5, message = "{book.title}")
  @NotNull
  private String title;
  @Range(min = 1, max = 10)
  private int rating;
  @Size(max = 600, message = "{book.description}")
  @NotNull
  private String description;
  @ManyToOne
  @NotNull
  private Publisher publisher;
  @ManyToMany(fetch = FetchType.EAGER)
  @NotEmpty
  @ToString.Exclude
  @EqualsAndHashCode.Exclude
  private List<Author> authors = new ArrayList<>();
  @Min(1)
  private int pages;
  @ManyToOne
  @NotNull
  private Category category;
}