
package com.proudWolf.ecommerce.dao;

import com.proudWolf.ecommerce.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

/*
** http://localhost:4200 is actual origin that our Angular application is running on. Currently!!! (not in production)
*/
@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long>{
    
}
