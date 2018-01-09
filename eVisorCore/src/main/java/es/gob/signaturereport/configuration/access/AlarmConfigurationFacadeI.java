// Copyright (C) 2018, Gobierno de España
// This program is licensed and may be used, modified and redistributed under the terms
// of the European Public License (EUPL), either version 1.1 or (at your
// option) any later version as soon as they are approved by the European Commission.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
// or implied. See the License for the specific language governing permissions and
// more details.
// You should have received a copy of the EUPL1.1 license
// along with this program; if not, you may find it at
// http://joinup.ec.europa.eu/software/page/eupl/licence-eupl

/** 
 * <b>File:</b><p>es.gob.signaturereport.configuration.access.AlarmConfigurationFacadeI.java.</p>
 * <b>Description:</b><p> Interface that provides the necessary methods for managing the configuration of system alarms.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * <b>Date:</b><p>14/04/2011.</p>
 * @author Spanish Government.
 * @version 1.0, 14/04/2011.
 */
package es.gob.signaturereport.configuration.access;

import java.util.List;

import es.gob.signaturereport.configuration.items.Alarm;
import es.gob.signaturereport.configuration.items.AlarmIdentifier;
import es.gob.signaturereport.persistence.exception.ConfigurationException;


/** 
 * <p>Interface that provides the necessary methods for managing the configuration of system alarms.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * @version 1.0, 14/04/2011.
 */
public interface AlarmConfigurationFacadeI {

    /**
     * Gets all system alarms.
     * @return	All system alarms order by alarm identifiers.
     * @throws ConfigurationException	If an error occurs.
     */
    AlarmIdentifier[] getSystemAlarms() throws ConfigurationException;

    /**
     * Gets the system alarm associated to the identifier.
     * @param alarmId Unique identifier of alarm to be retrieved.
     * @return If the alarm exists, the method returns the alarm information contained into {@link Alarm} object. Otherwise null.
     * @throws ConfigurationException	If an error occurs.
     */
    Alarm getAlarm(String alarmId) throws ConfigurationException;

    /**
     * Sets the alarm configuration associated to supplied identifier.
     * @param alarmId	Alarm identifier.
     * @param receivers	List of receivers.
     * @param lock		Flag that indicates if the alarm is locked.
     * @param standByTimePeriod	Period (minutes) from which communicates an alarm until it can re-send. 
     * @throws ConfigurationException	If an error occurs.
     */
    void setAlarmConfiguration(String alarmId,List<String> receivers,boolean lock, int standByTimePeriod) throws ConfigurationException;
}
