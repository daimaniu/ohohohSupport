package cn.daimaniu;

import cn.daimaniu.dao.AdminMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;

/**
 * Author :chenqisheng
 * Date   :2016-09-02 17:30.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ActiveProfiles("local")
@ContextConfiguration("/applicationContext-dao.xml")
public class DataSourceTest {
    @Autowired
    AdminMapper adminMapper;

    @Test
    public void localTest() {
        assertEquals(0, adminMapper.countAll());
    }
}
