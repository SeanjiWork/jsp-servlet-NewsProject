package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.NewsModel;
import com.javaweb.paging.Pageble;

public interface INewsDAO extends GenericDAO<NewsModel>{
	NewsModel findOne(Long id);
	List<NewsModel> findByCategoryId(Long categoryId);
	Long save(NewsModel newsModel);
	void update(NewsModel updateNews);
	void delete(long id);
	List<NewsModel> findAll(Pageble pageble);
	int getTotalItem();

}
