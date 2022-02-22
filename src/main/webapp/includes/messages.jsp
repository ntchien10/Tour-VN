<%@ include file="/includes/taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<%-- Error Messages --%>
<c:if test="${not empty errors}">
	<div class="message goog-inline-block" id="gt-bbar" onclick="imgClick()">
		<div class="jfk-butterBar jfk-butterBar-info jfk-butterBar-shown" >
			<span>
			    <c:forEach var="error" items="${errors}">
					<c:out value="${error}"/><br />
				</c:forEach>
			</span>
		</div>
	</div>
	<c:remove var="errors"/>
</c:if>

<c:if test="${not empty successMessagesTitle}">
	<div class="message goog-inline-block" id="gt-bbar" onclick="imgClick()">
		<div class="jfk-butterBar jfk-butterBar-info jfk-butterBar-shown" >
			<span>
        		<c:forEach var="msg" items="${successMessagesTitle}">
					<c:out value="${msg}"/><br />
				</c:forEach>
    		</span>
		</div>
	</div>
	<c:remove var="successMessagesTitle" scope="session"/>
</c:if>

<c:if test="${not empty successMessagesKey}">
	<div class="message goog-inline-block" id="gt-bbar" onclick="imgClick()">
		<div class="jfk-butterBar jfk-butterBar-info jfk-butterBar-shown" >
			<span>
				<c:forEach var="msg" items="${successMessagesKey}">
					<c:choose>
						<c:when test="${empty msg}">
							${msg}
						</c:when>
						<c:otherwise>
							<fmt:message key="${msg}"/>
						</c:otherwise>
					</c:choose>
					<br />
				</c:forEach>
			</span>
		</div>
	</div>
	<c:remove var="successMessagesKey" scope="session"/>
</c:if>

<script type="text/javascript">
	function imgClick() {
		$(".message").slideToggle();
	}
</script>