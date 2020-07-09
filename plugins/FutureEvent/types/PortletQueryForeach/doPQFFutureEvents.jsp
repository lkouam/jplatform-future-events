<%@page import="com.jalios.util.DateUtil"%>
<%@ include file='/jcore/portal/doPortletParams.jspf'%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/jcore/doInitPage.jspf" %>
<%
	PortletQueryForeach box = (PortletQueryForeach) portlet;
	jcmsContext.setTemplateUsage(TypeTemplateEntry.USAGE_DISPLAY_QUERY);
%>
<%@ include file="/types/PortletQueryForeach/doQuery.jspf"%>
<%@ include file="/types/PortletQueryForeach/doSort.jspf"%>

<%
	jcmsContext.addCSSHeader("plugins/FutureEvent/css/style.css");
	List<FutureEvent> firstOne = new ArrayList<FutureEvent>();
	List<FutureEvent> secondOne = new ArrayList<FutureEvent>();
	int eventCount = 0;

	SortedSet<FutureEvent> eventResultSet = new TreeSet<FutureEvent>(ComparatorManager.getComparator(FutureEvent.class, "startDate",true));
	eventResultSet.addAll(collection);
	collection = eventResultSet;
%>

<%@ include file="/types/PortletQueryForeach/doForeachHeader.jspf"%>
<%
	if(itPub instanceof FutureEvent) {
		FutureEvent fe = (FutureEvent)itPub;
		eventCount++;
		if(eventCount <= 2) {
			firstOne.add(fe);
		} else {
			secondOne.add(fe);
		}		
	}
%>
<%--
<jsp:include page='<%="/" + itPub.getTemplatePath(jcmsContext)%>'
	flush="true" />
 --%>
<%@ include file="/types/PortletQueryForeach/doForeachFooter.jspf"%>

<%
	if(Util.notEmpty(collection)) {
%>
<div class="furtur-events-box">
	<div class="row">
		<div class="col-md-7">
			<div class="next-events">
				<div class="card-count-3 card-responsive-layout" max-width="900px"
					min-width="480px">
					<jalios:foreach name="eventItem" type="FutureEvent" collection="<%=firstOne %>">
						<a class="card-link"
							href="<%=eventItem.getDisplayUrl(userLocale) %>">
							<%
								Date startDate = eventItem.getStartDate();
								Date endDate = eventItem.getEndDate();
								
								boolean isDayEvent = DateUtil.isSameDay(startDate, endDate);
								SimpleDateFormat sdf = new SimpleDateFormat("dd MMM");
								
								String month = DateUtil.getMonthDisplayName(DateUtil.getMonth(startDate), Calendar.SHORT, userLocale);
								int day = DateUtil.getDay(startDate);
								
								Calendar cal = Calendar.getInstance();
								cal.setTime(startDate);
								
								String dayOfWeek = cal.getDisplayName(Calendar.DAY_OF_WEEK, Calendar.SHORT, userLocale);
								Category eventCat = Util.getFirst(eventItem.getCategories());
								String eventCatName = "";
								if(eventCat != null) {
									eventCatName = eventCat.getName();
								}
								
							%>
							<div class="card card event-card card-publication card-default">
								<img
									src="<%=eventItem.getImagePrincipale() %>"
									alt="" class="card-img is-object-fit ">
								<% if(isDayEvent) { %>
									<div class="event-dates">
										<span class="date-icon"><jalios:icon src="date" /></span>
										<div class="day-week"><%=dayOfWeek %></div>
										<div class="day-month"><%=day %></div>
										<div class="month"><%=month %></div>
									</div>
								<% } else { %>
									<div class="event-dates interval">
										<span class="date-icon"><jalios:icon src="date" /></span>
										<div>
											DU <span><%=sdf.format(startDate) %></span>
										</div>
										<div>
											AU <span><%=sdf.format(endDate) %></span>
										</div>
									</div>								
										<% } %>
								<div class="event-cat"><%=eventCatName %></div>
								<div class="card-block ">
									<div class="card-title card-publication-title">
										<p>
											<jalios:icon src="jcmsplugin-calendar-location" />
											<%=eventItem.getLocation() %>
										</p>
										<p></p>
										<p><%=eventItem.getDescription() %></p>
									</div>
								</div>
							</div>
						</a>
					</jalios:foreach>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="coming-events">
				<div class="title"><span><span class="date-icon"><jalios:icon src="alert-app"/></span> À venir</span></div>
				<div class="events-inline-items">
					<jalios:foreach name="eventItem" type="FutureEvent" collection="<%=secondOne %>">
							<%
								Date startDate = eventItem.getStartDate();
								Date endDate = eventItem.getEndDate();
								SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
								
								String month = DateUtil.getMonthDisplayName(DateUtil.getMonth(startDate), Calendar.SHORT, userLocale);
								int day = DateUtil.getDay(startDate);
								
								Calendar cal = Calendar.getInstance();
								cal.setTime(startDate);
								
								String dayOfWeek = cal.getDisplayName(Calendar.DAY_OF_WEEK, Calendar.SHORT, userLocale);
								Category eventCat = Util.getFirst(eventItem.getCategories());
								String eventCatName = "";
								if(eventCat != null) {
									eventCatName = eventCat.getName();
								}
								
							%>
						<div class="row row-event">
							<div class="col-md-4 col-1">
								<div class="event-dates">
									<div class="day-week"><%=dayOfWeek %></div>
									<div class="day-month"><span><%=day %></span></div>
									<div class="month"><%=month %></div>
								</div>							
							</div>
							<div class="col-md-8">
								<p class="event-tag">
									<%if(Util.notEmpty(eventCatName)) { %><span class="event-cat"><%=eventCatName %></span> <% } %>
									<span class="event-hour"><span class="umanis-custom-icon"><jalios:icon src="jcmsplugin-jtask-smartphone-clock" /></span><%=sdf.format(startDate) %></span>
								</p>
								<p><jalios:icon src="jcmsplugin-calendar-location"/><%=eventItem.getLocation() %></p>
								<p><a href="<%=eventItem.getDisplayUrl(userLocale) %>"><%=eventItem.getDescription() %></a></p>
							</div>
						</div>					
					</jalios:foreach>											
				</div>
			</div>
		</div>
	</div>
</div>
<% } %>

