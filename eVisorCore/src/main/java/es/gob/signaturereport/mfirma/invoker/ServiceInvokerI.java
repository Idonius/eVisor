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
 * <b>File:</b><p>es.gob.signaturereport.mfirma.invoker.ServiceInvokerI.java.</p>
 * <b>Description:</b><p> This interface provides  methods and constants associated to invocation of "@firma".</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * <b>Date:</b><p>15/02/2011.</p>
 * @author Spanish Government.
 * @version 1.0, 15/02/2011.
 */
package es.gob.signaturereport.mfirma.invoker;


/** 
 * <p>This interface provides  methods and constants associated to invocation of "@firma".</p>
 * <b>Project:</b><p>Horizontal platform to generation signature reports in legible format.</p>
 * @version 1.0, 15/02/2011.
 */
public interface ServiceInvokerI {
    
    
    /**
     * Invoke a web service published by "@firma". 
     * @param serviceIdentifier	Identifier od service.
     * @param parameters	Parameters required by the method or service to invoke.
     * @return			The invocation result.
     * @throws ServiceInvokerException	Failed to perform the invocation.
     */
    Object invokeService(String serviceIdentifier, Object[] parameters ) throws ServiceInvokerException;

}
