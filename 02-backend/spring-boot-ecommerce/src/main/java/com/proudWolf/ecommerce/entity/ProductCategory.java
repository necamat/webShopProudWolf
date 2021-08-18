package com.proudWolf.ecommerce.entity;

import java.util.Set;
import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "product_category")
@Data
public class ProductCategory {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    
    @Column(name = "category_name")
    private String categorryName;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy ="category" )
    private Set<Product> products;
    
}
