package com.proudWolf.ecommerce.dao;

import com.proudWolf.ecommerce.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;


/*
** collectionResourceRel = "productCategory" is name of JSON entry
** path = "product-category" is reference from /product-category
*/

/*
** http://localhost:4200 is actual origin that our Angular application is running on. Currently!!! (not in production)
*/
@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long>{
    
}
