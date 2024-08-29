package com.training.transportcomany2.TestUserService;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.BDDMockito.willDoNothing;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.training.transportcomany2.model.Booking;
import com.training.transportcomany2.repos.BookingRepo;
import com.training.transportcomany2.services.BookingService;
/**
 * 
 * @author Abhi
 * 
 * ServicesTests for booking service
 */
@SpringBootTest
 class TestBookingService {

	@Mock
	private BookingRepo Repository;

	@InjectMocks
	private BookingService Service;
	@Mock
	private Booking booking;

	@Test
	void testsavebook() {
		Booking m = new Booking();

		when(Repository.save(booking)).thenReturn(m);
		assertThat(Service.book(booking)).isZero();

	}

	@Test
	void testgetAllBookingsn() throws Exception {
		List<Booking> l = new ArrayList<Booking>();

		when(Repository.findAll()).thenReturn(l);

		assertEquals(l, Service.getAllBookings());
	}

	@Test
	void testGetBookingId() throws Exception {
		Booking m = new Booking();
		Service.getAllBookings();
		Optional<Booking> entity = Repository.findById(m.getUserid());
		assertThat(entity).isNotNull();
	}

	@Test
	void testupdatebook() {
		Booking m = new Booking();
		when(Repository.save(booking)).thenReturn(m);
		assertThat(Service.book(booking)).isZero();

	}

	@Test
	void testAdminDelete() throws Exception {
		Integer employeeId = 1;

		willDoNothing().given(Repository).deleteById(employeeId);

		assertThat(Repository.save(booking)).isNull();

	}

}
