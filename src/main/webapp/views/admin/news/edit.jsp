<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-news"/>
<c:url var ="NewURL" value="/admin-news"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa bài viết</title>
</head>
<body>
	<!-- Breadcrumbs -->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
		<li class="breadcrumb-item active">Edit Article</li>
	</ol>

	<div class="container">
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-edit"></i> Edit Article
			</div>

			<div class="card-body">
				<!-- Hiển thị thông báo nếu có -->
				 <c:if test="${not empty messageResponse}">
		        	<div class="alert alert-${alert}" role="alert">
		  					<strong>${messageResponse} - </strong> <a href="<c:url value='/admin-news?type=list&page=1&maxPageItem=100&sortName=title&sortBy=desc'/>" class="alert-link">Back to List.</a>
					</div>
		        </c:if>

				<form id="formSubmit">
					<!-- Category -->
					<div class="form-group">
						<label for="categoryCode">Category</label> 
						<select class="form-control" id="categoryCode" name="categoryCode">
						<c:if test="${empty model.categoryCode}">
							<option disabled selected>-- Select Category --</option>
							<c:forEach var="item" items="${categories}">
								<option value="${item.code}">${item.name}</option>
							</c:forEach>
						</c:if>	
						
						<c:if test="${not empty model.categoryCode}">
							<c:forEach var="item" items="${categories}">
			
							<option value="${item.code}" <c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
									${item.name}
									</option>
							
							</c:forEach>
						</c:if>	
						
						</select>
					</div>

					<!-- Title -->
					<div class="form-group">
						<label for="title">Title</label> <input type="text"
							class="form-control" id="title" name="title"
							value="${model.title}" placeholder="Enter title">
					</div>

					<!-- Image -->
					<div class="form-group">
						<label for="thumbnail">Image URL</label> <input type="text"
							class="form-control" id="thumbnail" name="thumbnail"
							value="${model.thumbnail}" placeholder="Enter image URL">
					</div>

					<!-- Short Description -->
					<div class="form-group">
						<label for="shortDescription">Short Description</label>
						<textarea class="form-control" id="shortDescription"
							name="shortDescription" rows="3"
							placeholder="Enter short description">${model.shortDescription}</textarea>
					</div>

					<!-- Content -->
					<div class="form-group">
						<label for="content">Content</label>
						<textarea class="form-control" id="content" name="content"
							rows="10" placeholder="Enter article content" >${model.content}</textarea>
					</div>

					<!-- Buttons -->
					<div class="form-group text-center">
						<c:if test="${not empty model.id}">
							<button type="button" class="btn btn-warning btn-lg"
								id="btnAddOrUpdateNew">
								<i class="fas fa-save"></i> Update Article
							</button>
						</c:if>
						<c:if test="${empty model.id}">
							<button type="button" class="btn btn-success btn-lg"
								id="btnAddOrUpdateNew">
								<i class="fas fa-plus"></i> Add Article
							</button>
						</c:if>
					</div>

					<!-- Hidden ID Field -->
					<input type="hidden" value="${model.id}" id="id" name="id">
				</form>
			</div>

			<div class="card-footer text-muted">Updated
				yesterday at 11:59 PM</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
	    editor = CKEDITOR.replace('content', {
	        removePlugins: 'exportpdf'
	    });
	});


	</script>
	
	<script type="text/javascript">
		$('#btnAddOrUpdateNew').click(function (e){
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			/* index, value */
			$.each(formData, function (i, v){
				data[""+v.name+""] = v.value;
			});
			var id = $('#id').val();
			if(id == ""){
				addNew(data);
			}else{
				updateNew(data);
			}
		});
		function addNew(data){
		    console.log(data); // Xem dữ liệu được gửi
		    $.ajax({
		        url: '${APIurl}',
		        type: 'POST',
		        contentType: 'application/json',
		        data: JSON.stringify(data),
		        dataType: 'json',
		        success: function (result){
		            console.log(result); // Kiểm tra kết quả trả về từ API
		            window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=insert_success";
		        },
		        error: function (error){
		            console.log(error); // Kiểm tra lỗi trả về
		            window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
		        }
		    });
		}

		function updateNew(data){
		    console.log(data); // Xem dữ liệu được gửi
		    $.ajax({
		        url: '${APIurl}',
		        type: 'PUT',
		        contentType: 'application/json',
		        data: JSON.stringify(data),
		        dataType: 'json',
		        success: function (result){
		            console.log(result); // Kiểm tra kết quả trả về từ API
		            window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=update_success";
		        },
		        error: function (error){
		            console.log(error); // Kiểm tra lỗi trả về
		            window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
		        }
		    });
		}

		
	</script>

</body>
</html>