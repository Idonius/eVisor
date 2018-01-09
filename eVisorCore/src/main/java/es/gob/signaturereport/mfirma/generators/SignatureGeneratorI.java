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
 * <b>File:</b><p>es.gob.signaturereport.mfirma.generators.SignatureGeneratorI.java.</p>
 * <b>Description:</b><p> Class that provide all constants and method for creating of electronic signature.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * <b>Date:</b><p>13/09/2011.</p>
 * @author Spanish Government.
 * @version 1.0, 13/09/2011.
 */
package es.gob.signaturereport.mfirma.generators;

import java.security.PrivateKey;
import java.security.cert.X509Certificate;

import es.gob.signaturereport.mfirma.SignatureManagerException;


/** 
 * <p>Class that provide all constants and method for creating of electronic signature.</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * @version 1.0, 13/09/2011.
 */
public interface SignatureGeneratorI {

	/**
	 * Attribute that represents the PDF signature format. 
	 */
	String PDF_SIGNATURE_FORMAT = "PDF";
	/**
	 * Attribute that represents the PAdES signature format. 
	 */
	String PADES_SIGNATURE_FORMAT = "PADES";
	
	/**
	 * Generates a signature from the supplied document.
	 * @param document	Document to be signed.
	 * @param key		Private key.
	 * @param cert		Certificate.
	 * @return	Signature.
	 * @throws 	SignatureManagerException If an error occurs.
	 */
	byte[] generateSignature(byte[] document, PrivateKey key, X509Certificate cert) throws SignatureManagerException;
}
