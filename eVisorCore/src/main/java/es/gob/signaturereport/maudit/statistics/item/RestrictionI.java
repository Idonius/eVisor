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
 * <b>File:</b><p>es.gob.signaturereport.maudit.statistics.item.RestrictionI.java.</p>
 * <b>Description:</b><p>Interfaces that provides all methods and constants for representing a query restriction.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * <b>Date:</b><p>19/09/2011.</p>
 * @author Spanish Government.
 * @version 1.0, 19/09/2011.
 */
package es.gob.signaturereport.maudit.statistics.item;

/** 
 * <p>Interfaces that provides all methods and constants for representing a query restriction.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * @version 1.0, 19/09/2011.
 */
public interface RestrictionI {

	/**
	 * Gets the field operation.
	 * @return	Field operation value.
	 */
	String getFieldOperation();

	/**
	 * Gets the union operation.
	 * @return	Union operation.
	 */
	String getRestrictionUnion();

	/**
	 * Gets the field type.
	 * @return	Field type.
	 */
	int getFieldType();

	/**
	 * Gets the field value.
	 * @return	Field value.
	 */
	String getFieldValue();

}
