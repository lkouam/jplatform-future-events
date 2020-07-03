<%@ include file='/jcore/doInitPage.jspf'%>
<%@ include file='/jcore/portal/doPortletParams.jspf'%>
<%
	PortletQueryForeach box = (PortletQueryForeach) portlet;
jcmsContext.setTemplateUsage(TypeTemplateEntry.USAGE_DISPLAY_QUERY);
%>
<%@ include file="/types/PortletQueryForeach/doQuery.jspf"%>
<%@ include file="/types/PortletQueryForeach/doSort.jspf"%>

<%
	jcmsContext.addCSSHeader("plugins/FutureEvent/css/style.css");
%>


<div class="furtur-events-box">
	<div class="row">
		<div class="col-md-7">
			<div class="next-events">
				<div class="card-count-3 card-responsive-layout" max-width="900px"
					min-width="480px">
					<a class="card-link"
						href="jcms/sra_10001001/fr/best-places-to-work-program-umanis-maroc">
						<div class="card card event-card card-publication card-default">
							<img
								src="upload/docs/image/jpeg/2020-07/devops.jpeg"
								alt="" class="card-img is-object-fit ">
							<div class="event-dates">
								<span class="date-icon"><jalios:icon src="date" /></span>
								<div class="day-week">JEUDI</div>
								<div class="day-month">16</div>
								<div class="month">JUIL.</div>
							</div>
							<div class="event-cat">MEET'UP</div>
							<div class="card-block ">
								<div class="card-title card-publication-title">
									<p>
										<jalios:icon src="jcmsplugin-calendar-location" />
										LA COQUE Place Basse
									</p>
									<p></p>
									<p>MEET'UP Marseille : DEVOPS - Réussir sa transformation devops</p>
								</div>
							</div>
						</div>
					</a> 
					<a class="card-link" href="#">
						<div class="card card event-card card-publication card-default">
							<img
								src="upload/docs/image/jpeg/2020-07/google.jpeg.associated/th-320x240-google.jpeg.jpg"
								alt="" class="card-img is-object-fit ">
							<div class="event-dates interval">
								<span class="date-icon"><jalios:icon src="date" /></span>
								<div>
									DU <span>20 JUIL.</span>
								</div>
								<div>
									AU <span>24 JUIL.</span>
								</div>
							</div>							
							<div class="event-cat">Conférence</div>
							<div class="card-block">
								<div class="card-title card-publication-title">
									<p><jalios:icon src="jcmsplugin-calendar-location" />Paris Expo Porte de Versailles</p>
									<p><jalios:icon src="jcmsplugin-jtask-smartphone-clock" />10h00</p>
									<p>UMANIS sera au GOOGLE CLOUD SUMMIT</p>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="coming-events">
				<div class="title"><span><span class="date-icon"><jalios:icon src="alert-app"/></span> À venir</span></div>
				<div class="events-inline-items">
					<div class="row row-event">
						<div class="col-md-4 col-1">
							<div class="event-dates">
								<div class="day-week">JEUDI</div>
								<div class="day-month"><span>25</span></div>
								<div class="month">JUIL.</div>
							</div>							
						</div>
						<div class="col-md-8">
							<p class="event-tag">
								<span class="event-cat">Meet'up</span>
								<span class="event-hour"><span class="umanis-custom-icon"><jalios:icon src="jcmsplugin-jtask-smartphone-clock" /></span>19h15</span>
							</p>
							<p><jalios:icon src="jcmsplugin-calendar-location"/>Campus CESI Orléans</p>
							<p>MEET'UP Nantes : CLOUD PLATFORMS</p>
						</div>
					</div>
					<div class="row row-event">
						<div class="col-md-4 col-1">
							<div class="event-dates">
								<div class="day-week">MER.</div>
								<div class="day-month">23</div>
								<div class="month">SEPT.</div>
							</div>							
						</div>
						<div class="col-md-8">
							<p>
								<span class="event-cat">MEET'UP</span>
								<span class="event-hour"><span class="umanis-custom-icon"><jalios:icon src="jcmsplugin-jtask-smartphone-clock" /></span>10h30</span>
							</p>
							<p><jalios:icon src="jcmsplugin-calendar-location"/>NEARSHORE PARK</p>
							<p>MEET'UP Casablanca, Automatisez vos business process avec la Power Platform</p>
						</div>
					</div>
					<div class="row row-event">
						<div class="col-md-4 col-1">
							<div class="event-dates">
								<div class="day-week">JEUDI</div>
								<div class="day-month">20</div>
								<div class="month">OCT.</div>
							</div>							
						</div>
						<div class="col-md-8">
							<p>
								<span class="event-cat">Conférence</span>
								<span class="event-hour"><span class="umanis-custom-icon"><jalios:icon src="jcmsplugin-jtask-smartphone-clock" /></span>15h30</span>
							</p>
							<p><jalios:icon src="jcmsplugin-calendar-location"/>Casablanca</p>
							<p>Best Places To Work Program, UMANIS - MAROC</p>
						</div>
					</div>											
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/types/PortletQueryForeach/doForeachHeader.jspf"%>
<%--
<jsp:include page='<%="/" + itPub.getTemplatePath(jcmsContext)%>'
	flush="true" />
 --%>
<%@ include file="/types/PortletQueryForeach/doForeachFooter.jspf"%>
<%@ include file="/types/PortletQueryForeach/doPager.jspf"%>