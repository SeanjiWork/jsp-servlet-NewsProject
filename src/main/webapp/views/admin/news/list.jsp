<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var = "APIurl" value = "api-admin-news" />
<c:url var = "NewURL" value = "admin-news" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách bài viết</title>
</head>
<body>
    <!-- Breadcrumbs -->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        <li class="breadcrumb-item active">Tables</li>
    </ol>

    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Quản Lý Bài Viết
        </div>
        <div class="card-body">
        
        <c:if test="${not empty messageResponse}">
        	<div class="alert alert-${alert}" role="alert">
  					<strong>${messageResponse} </strong>
			</div>
        </c:if>
        
        
        
            <div class="d-flex justify-content-end mb-3">
                <a href="${pageContext.request.contextPath}/admin-news?type=edit" class="btn btn-outline-primary rounded ml-2" data-bs-toggle="tooltip" title="Create New">
                    Create New
                </a>
                <button type="button" class="btn btn-outline-danger rounded ml-2" id="btnDelete" data-bs-toggle="tooltip" title="Delete">
                    Delete
                </button>
            </div>

            <form action="<c:url value='/admin-news' />" id="formSubmit" method="get">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" >
                        <thead>
                            <tr>
                                <th data-sortable="false"><input type="checkbox" id="checkAllTop"></th>
                                <th>Tên Bài Viết</th>
                                <th>Mô Tả Ngắn</th>
                                <th data-sortable="false">Nội dung</th>
                                <th data-sortable="false">Hình Ảnh</th>
                                <th data-sortable="false">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${model.listResult}">
                                <tr>
                                    <td><input type="checkbox" class="checkItem" value="${item.id}" id="checkbox_${item.id}"></td>
                                    <td>${item.title}</td>
                                    <td>${item.shortDescription}</td>
                                    <td>${item.content}</td>
                                    <td>${item.thumbnail}</td>
                                    <td>
                                        <c:url var="editURL" value="/admin-news">
                                            <c:param name="type" value="edit" />
                                            <c:param name="id" value="${item.id}" />
                                        </c:url>
                                     	<div class="d-flex">
										    <a href="${editURL}" class="btn btn-outline-success" data-bs-toggle="tooltip" title="Update News">
										        <i class="fas fa-pencil-alt"></i> 
										    </a>
										</div>

                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table><br/>
                    
                    <!-- custom pagination -->
                    <!-- <ul class="pagination" id="pagination"></ul>
					<input type="hidden" value="" id="page" name="page"/>
					<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
					<input type="hidden" value="" id="sortName" name="sortName"/>
					<input type="hidden" value="" id="sortBy" name="sortBy"/>
					<input type="hidden" value="list" id="type" name="type"/> -->
              
                </div>

               	 
            </form>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>
    
   <script>
	    $(document).ready(function () {
	        console.log("jQuery đã tải:", typeof $ !== 'undefined');  // Kiểm tra jQuery đã load chưa
	        console.log("jQuery version:", $.fn.jquery);
	        console.log("twbsPagination available:", typeof $.fn.twbsPagination !== "undefined");
	    });
	</script>
	
    <script>
		 /*   
		  <!-- custom pagination -->
		 var totalPages = ${model.totalPage};
		    var currentPage = ${model.page};
		    var limit = 2;
		
		    $(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		                if (currentPage != page) {
		                    $('#maxPageItem').val(limit);
		                    $('#page').val(page);
		                    $('#sortName').val('title');
		                    $('#sortBy').val('desc');
		                    $('#type').val('list');
		                    $('#formSubmit').submit();
		                }
		            }
		        });
		    }); */
		    
		    $(document).ready(function () {
		        var page = 1;
		        var pageSize = 10;

		        // Hàm load dữ liệu từ server
		        function loadData() {
		            $.ajax({
		                url: "/api/news",
		                type: "GET",
		                data: { page: page, size: pageSize },
		                dataType: "json",
		                success: function (response) {
		                    var html = "";
		                    $.each(response.data, function (index, item) {
		                        html += `
		                            <tr>
		                                <td><input type="checkbox" class="checkItem" value="${item.id}"></td>
		                                <td>${item.title}</td>
		                                <td>${item.shortDescription}</td>
		                                <td>${item.content}</td>
		                                <td>${item.thumbnail}</td>
		                                <td>
		                                    <a href="/admin-news?type=edit&id=${item.id}" class="btn btn-outline-success">
		                                        <i class="fas fa-pencil-alt"></i>
		                                    </a>
		                                    <button class="btn btn-outline-danger btnDelete" data-id="${item.id}">
		                                        <i class="fa-regular fa-trash-can"></i>
		                                    </button>
		                                </td>
		                            </tr>
		                        `;
		                    });

		                    $("#dataTable tbody").html(html);

		                    // Cập nhật pagination
		                    updatePagination(response.totalPages);
		                }
		            });
		        }

		        // Hàm cập nhật pagination Bootstrap
		        function updatePagination(totalPages) {
		            $("#pagination").twbsPagination("destroy"); // Xóa pagination cũ

		            $("#pagination").twbsPagination({
		                totalPages: totalPages,
		                visiblePages: 5,
		                startPage: page,
		                onPageClick: function (event, selectedPage) {
		                    page = selectedPage;
		                    loadData(); // Load dữ liệu trang mới
		                }
		            });
		        }

		        // Khi thay đổi số bài viết trên trang
		        $("#dataTable_length select").change(function () {
		            pageSize = $(this).val();
		            page = 1; // Quay lại trang 1 khi thay đổi filter
		            loadData();
		        });

		        // Xử lý sự kiện xóa bài viết
		        $(document).on("click", ".btnDelete", function () {
		            var id = $(this).data("id");

		            if (confirm("Bạn có chắc chắn muốn xóa bài viết này?")) {
		                $.ajax({
		                    url: `/api/news/${id}`,
		                    type: "DELETE",
		                    success: function () {
		                        loadData(); // Tải lại dữ liệu sau khi xóa
		                    }
		                });
		            }
		        });

		        // Load dữ liệu lần đầu tiên
		        loadData();
		    });
    
    /* END */
        $(document).ready(function () {
            // Khởi tạo DataTable
            $('#dataTable').DataTable({
                "columnDefs": [{ "orderable": false, "targets": [0, 5] }]
            });

            // Xử lý checkbox "Chọn tất cả"
            $('#checkAllTop').change(function () {
                $('.checkItem').prop('checked', $(this).prop('checked'));
            });

            // Nếu bỏ chọn bất kỳ checkbox nào, bỏ chọn "checkAllTop"
            $('.checkItem').change(function () {
                if (!$(this).prop('checked')) {
                    $('#checkAllTop').prop('checked', false);
                }
            });

            // Xử lý sự kiện xóa bài viết
            $('#btnDelete').click(function () {
            	var data = {};
                let ids = $('.checkItem:checked').map(function () {
                    return $(this).val();
                }).get();
                if (ids.length === 0) {
                    alert("Vui lòng chọn ít nhất một bài viết để xóa!");
                    return;
                }

                if (confirm("Bạn có chắc chắn muốn xóa các bài viết đã chọn?")) {
                	data['ids'] = ids;
                    deleteNews(data);
                }
                
                
            });

            function deleteNews(data) {
                $.ajax({
                    url: '${APIurl}',
                    type: 'DELETE',
                    contentType: 'application/json',
                    data: JSON.stringify(data),
                    success: function () {
                        window.location.href = "${NewURL}?type=list&message=delete_success";
                    	/* window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=delete_success"; */
                    },
                    error: function () {
                        window.location.href = "${NewURL}?type=list&message=error_system";
                    	/* window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system"; */
                    }
                });
            }
        });
    </script>
</body>

</html>