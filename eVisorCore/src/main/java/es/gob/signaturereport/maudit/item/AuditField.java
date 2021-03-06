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
 * <b>File:</b><p>es.gob.signaturereport.maudit.item.AuditField.java.</p>
 * <b>Description:</b><p> Class that represents a field registered into audit module.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * <b>Date:</b><p>12/09/2011.</p>
 * @author Spanish Government.
 * @version 1.0, 12/09/2011.
 */
package es.gob.signaturereport.maudit.item;


/** 
 * <p>Class that represents a field registered into audit module.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * @version 1.0, 12/09/2011.
 */
public class AuditField {
	
	/**
	 * Attribute that represents the field identifier. 
	 */
	private String fieldId= null;
	
	/**
	 * Attribute that represents the field description. 
	 */
	private String description = null;

	/**
	 * Constructor method for the class AuditField.java.
	 * @param id		Field identifier.
	 * @param fieldDescription 	Field description.
	 */
	public AuditField(String id, String fieldDescription) {
		super();
		this.fieldId = id;
		this.description = fieldDescription;
	}

	
	/**
	 * Gets the value of the field identifier.
	 * @return the value of the field identifier.
	 */
	public String getFieldId() {
		return fieldId;
	}

	
	/**
	 * Sets the value of the field identifier.
	 * @param id The value for the field identifier.
	 */
	public void setFieldId(String id) {
		this.fieldId = id;
	}

	
	/**
	 * Gets the value of the field description.
	 * @return the value of the field description.
	 */
	public String getDescription() {
		return description;
	}

	
	/**
	 * Sets the value of the field description.
	 * @param fieldDescription The value for the field description.
	 */
	public void setDescription(String fieldDescription) {
		this.description = fieldDescription;
	}
	

}
