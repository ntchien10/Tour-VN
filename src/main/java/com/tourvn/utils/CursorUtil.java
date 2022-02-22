// ----------------------------------------------------------------------------
// Copyright 2015, VHCSoft JSC.
// All rights reserved
// ----------------------------------------------------------------------------
// Change History:
//  2015.09.21  DatNH
//     - Initial release
// ----------------------------------------------------------------------------
package com.tourvn.utils;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * Title: QLNT
 * </p>
 * <p>
 * Copyright: Copyright (c) by VHCSoft JSC 2015
 * </p>
 * <p>
 * Company: VietNam High Technology & Software Join Stock Company
 * </p>
 * 
 * @author VHCSoft JSC
 * @version 1.0
 */
public class CursorUtil {

	public static <T> List<T> getDomain(Map<String, Object> parms, String outputCursor) {
		
		@SuppressWarnings("unchecked")
		List<T> list = (List<T>) parms.get(outputCursor);
		
		return list;
	}
}
