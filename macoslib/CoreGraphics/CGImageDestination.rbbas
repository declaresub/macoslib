#tag Class
Class CGImageDestination
Inherits CFType
	#tag Event
		Function ClassID() As CFTypeID
		  return me.ClassID
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(URL as CFURL, type as String, imageCount as Integer = 1)
		  #if targetMacOS
		    soft declare function CGImageDestinationCreateWithURL lib CarbonFramework (url as ptr, type as CFStringRef, count as Integer, options as Ptr) as Ptr
		    
		    static ReservedForFutureUse as Ptr = nil
		    me.Adopt CGImageDestinationCreateWithURL(URL, type, imageCount, ReservedForFutureUse), true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ClassID() As CFTypeID
		  #if targetMacOS
		    soft declare function CGImageDestinationGetTypeID lib CarbonFramework () as CFTypeID
		    
		    return CGImageDestinationGetTypeID
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddImage(image as CGImage)
		  if image is nil then
		    return
		  end if
		  
		  if me = nil then
		    return
		  end if
		  
		  #if targetMacOS
		    'void CGImageDestinationAddImage (
		    'CGImageDestinationRef idst,
		    'CGImageRef image,
		    'CFDictionaryRef properties -- should add support for this sometime
		    ');
		    
		    soft declare sub CGImageDestinationAddImage lib CarbonFramework (idst as Ptr, image as Ptr, properties as Ptr)
		    
		    CGImageDestinationAddImage me, image, nil
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Finalize() As Boolean
		  if me = nil then
		    return false
		  end if
		  
		  #if targetMacOS
		    soft declare function CGImageDestinationFinalize lib CarbonFramework (idst as Ptr) as Boolean
		    
		    return CGImageDestinationFinalize(me)
		  #endif
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass