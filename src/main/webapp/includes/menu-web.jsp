<%@ include file="/includes/taglibs.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <div class="fl">
	<ul id="navmenu-h">
		${globalData.menuItem}

            
	</ul>
</div> --%>

<div class="fl">
    <ul id="navmenu-h">
        <!-- ROLE USER -->
        <security:authorize ifAnyGranted="0">
            <li><a href="/home.html"><fmt:message key="global.menu.home"/></a></li>
            <li><a href="#"><fmt:message key="global.menu.system"/></a>
            <li>
                <ul>
                    <li><a href="/admin/user/list.html"><fmt:message key="sidebar.admin.userManagement"/></a></li>
                    <li><a href="/admin/teacher/list.html"><fmt:message key="sidebar.admin.sysUserManagement"/></a></li>
                    <li><a href="/admin/lesson/list.html"><fmt:message key="sidebar.admin.lessonManagement"/></a></li>
                    <li><a href="/admin/change/password.html"><fmt:message key="sidebar.admin.changePassword"/></a></li>
                </ul>
            </li>
            <li><a href="/admin/comment/list.html"><fmt:message key="sidebar.admin.commentManagement"/></a></li>
        </security:authorize>

        <!-- ROLE ADMIN -->
        <security:authorize ifAnyGranted="1">
            <li><a href="#">Hệ thống</a>
                <ul>  
                    <li><a href="/admin/user/danh-sach.html">Quản lý người dùng</a></li>
                    <li><a href="/admin/nhom-nguoi-dung/danh-sach.html">Quản lý nhóm người dùng</a></li>
                    <li><a href="#">Phân quyền nhóm người dùng</a></li>
                    <li><a href="#">Quản lý menu</a></li>
					<li><a href="/quan-ly-tham-so-he-thong/list.html">Quản lý tham số hệ thống</a></li>
					<li><a href="/quan-ly-thong-tin-doi-tac/thoai-list.html">Quản lý đối tác thoại</a></li>
					<li><a href="/quan-ly-thong-tin-doi-tac/sms-list.html">Quản lý đối tác SMS</a></li>
					<li><a href="/quan-ly-bang-gia-thoai-doi-tac/list.html">Quản lý bảng giá thoại</a></li>
                    <li><a href="/admin/job-configuration/list.html">Cấu hình SMS/EMAIL</a></li>
                    <li><a href="/admin/mail-thread/form.html">Tiến trình gửi mail</a></li>
                </ul>
            </li>
            <li><a href="#">Từ điển</a>
                <ul>
                    <li><a href="/report/cdr-data-call/list.html"><fmt:message key="report.cdr.data.call.title.list"/></a></li>
                    <li><a href="/report/compare-mbf-partner/list.html">So sánh Cdr đối tác</a></li>
                </ul>
            </li>
            <li><a href="#">Báo cáo thoại</a>
            	<ul>
                    <li><a href="/report/compare-revenue/list.html"><fmt:message key="report.compare.revenue.title.list"/></a></li>
                    <li><a href="/admin/call-direction/list.html"><fmt:message key="report.call.direction.list"/></a></li>
                    <li><a href="/admin/call-transit/list.html"><fmt:message key="report.call.transit.list"/></a></li>
                    <li><a href="/report/quantity-call-other-network/list.html"><fmt:message key="report.quantity.call.other.network.title.menu"/></a></li>
                    <li><a href="/report/forward-direction/list.html"><fmt:message key="report.call.forward.direction.list"/></a></li>
                    <li><a href="/report/routing-by-no/list.html"><fmt:message key="report.routing.by.call.no.list"/></a></li>
                    <li><a href="/report/kpi/list.html">Báo cáo chất lượng</a></li>
                </ul>
            </li> 
            <li><a href="#">Báo cáo SMS</a>
            	<ul>
            		<li><a href="/report/sms-revenue/overview.html">Báo cáo SMS chiều về</a></li> 
                    <li><a href="/report/sms-revenue/partnerDetail.html">Báo cáo biến động P2P chiều về</a></li>
                    <li><a href="/report/a2p-partner/list.html">Báo cáo biến động A2P chiều về</a></li> 
                    <li><a href="/report/sms-revenue/overview-mo.html">Báo cáo SMS chiều đi</a></li> 
                </ul>
            </li>  
            <li><a href="#">Công cụ dụng cụ</a>
            	<ul>
            		<li><a href="#">Quản lý CCDC</a>
            			<ul>
            				<li><a href="/ccdc/quan-ly-ccdc/list.html?type=Tt">Quản lý thông tin CCDC</a></li> 
            				<li><a href="/ccdc/thong-ke-phan-bo-chi-phi/list.html">Phân bổ chi phí</a></li>
            				<li><a href="/ccdc/quan-ly-ccdc/list.html?type=dvMua">Theo dõi theo phòng/ban mua</a></li> 
            				<li><a href="/ccdc/quan-ly-ccdc/list.html?type=dvSd">Theo dõi theo phòng/ban sử dụng</a></li> 
            				<li><a href="/cong-cu-dung-cu/report/lich-su-chi-phi.html">Lịch sử chi phí</a></li> 
            				<li><a href="/cong-cu-dung-cu/report/lich-su-dieu-chuyen.html?trangThai=DC">Lịch sử điều chuyển</a></li>
            				<li><a href="/cong-cu-dung-cu/report/lich-su-dieu-chuyen.html?trangThai=TL">Lịch sử thanh lý</a></li> 
            			</ul>
            		</li> 
                    <li><a href="#">Báo cáo thống kê CCDC</a>
            			<ul>  
            				<li><a href="/ccdc/bao-cao-kiem-ke/list.html">Báo cáo kiểm kê</a></li> 
            				<li><a href="/ccdc/bao-cao-phan-bo-chi-phi/list.html">Báo cáo phân bổ chi phí</a></li>
            			</ul>
            		</li>
                </ul>
            </li>  
        </security:authorize>
    </ul>
</div>

<%-- <div class="fr">
	<span class="username">
		<b>Welcome, ${globalUser.username}</b></span>
	<span class="logout pl2">
		<a href="logout.html" title="Thoát">Thoát</a>
	</span>
</div>
<div class="fr">
	<span class="username">
		<b>Welcome, ${globalUser.username}
		(${globalUser.maPhong})
		</b></span>
	<span class="logout pl2">
		<a href="logout.html" title="user">Thoát</a>
	</span>
</div> --%>