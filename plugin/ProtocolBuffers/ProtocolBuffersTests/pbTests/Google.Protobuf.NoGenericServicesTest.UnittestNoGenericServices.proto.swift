// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_no_generic_services.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension Google.Protobuf{ public struct NoGenericServicesTest { }}

public var UnittestNoGenericServicesRoottestExtension:ConcreateExtensionField {
   get {
       return Google.Protobuf.NoGenericServicesTest.UnittestNoGenericServicesRoot.sharedInstance.UnittestNoGenericServicesRoottestExtensionStatic
   }
}
public extension Google.Protobuf.NoGenericServicesTest {
  public struct UnittestNoGenericServicesRoot {
    public static var sharedInstance : UnittestNoGenericServicesRoot {
     struct Static {
         static let instance : UnittestNoGenericServicesRoot = UnittestNoGenericServicesRoot()
     }
     return Static.instance
    }
    var UnittestNoGenericServicesRoottestExtensionStatic:ConcreateExtensionField
    public var extensionRegistry:ExtensionRegistry

    init() {
      UnittestNoGenericServicesRoottestExtensionStatic = ConcreateExtensionField(type:ExtensionType.extensionTypeInt32, extendedClass:Google.Protobuf.NoGenericServicesTest.TestMessage.self, fieldNumber: 1000, defaultValue:Int32(0), messageOrGroupClass:Int32.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
      registry.addExtension(extensions: UnittestNoGenericServicesRoottestExtensionStatic)
    }
    public static func testExtension() -> ConcreateExtensionField {
         return UnittestNoGenericServicesRoot.sharedInstance.UnittestNoGenericServicesRoottestExtensionStatic
    }
  }



  //Enum type declaration start 

  public enum TestEnum:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case foo = 1
    public func toString() -> String {
      switch self {
      case .foo: return "FOO"
      }
    }
    public static func fromString(str:String) throws -> Google.Protobuf.NoGenericServicesTest.TestEnum {
      switch str {
      case "FOO":  return .foo
      default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
      switch self {
      case .foo: return ".foo"
      }
    }
  }

  //Enum type declaration end 

  final public class TestMessage : ExtendableMessage {

    public static func == (lhs: Google.Protobuf.NoGenericServicesTest.TestMessage, rhs: Google.Protobuf.NoGenericServicesTest.TestMessage) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.hasA == rhs.hasA) && (!lhs.hasA || lhs.a == rhs.a)
      fieldCheck = fieldCheck && lhs.isEqualExtensionsInOther(otherMessage: rhs, startInclusive:1000, endExclusive:536870912)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var a:Int32 = Int32(0)
    public fileprivate(set) var hasA:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
      if !extensionsAreInitialized() {
        return false
      }
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasA {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:a)
      }
      try writeExtensionsTo(codedOutputStream: codedOutputStream, startInclusive:1000, endExclusive:536870912)
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasA {
        serialize_size += a.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += extensionsSerializedSize()
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
      return Google.Protobuf.NoGenericServicesTest.TestMessage.classBuilder() as! Google.Protobuf.NoGenericServicesTest.TestMessage.Builder
    }
    public func getBuilder() -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
      return classBuilder() as! Google.Protobuf.NoGenericServicesTest.TestMessage.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Google.Protobuf.NoGenericServicesTest.TestMessage.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Google.Protobuf.NoGenericServicesTest.TestMessage.Builder()
    }
    public func toBuilder() throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
      return try Google.Protobuf.NoGenericServicesTest.TestMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Google.Protobuf.NoGenericServicesTest.TestMessage) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
      return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasA {
        jsonMap["a"] = a
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
      return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
      return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasA {
        output += "\(indent) a: \(a) \n"
      }
      output += try getExtensionDescription(startInclusive:1000, endExclusive:536870912, indent:indent)
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasA {
               hashCode = (hashCode &* 31) &+ a.hashValue
            }
            hashCode = (hashCode &* 31) &+ Int(hashExtensionsFrom(startInclusive: 1000, endExclusive:536870912))
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Google.Protobuf.NoGenericServicesTest.TestMessage"
    }
    override public func className() -> String {
        return "Google.Protobuf.NoGenericServicesTest.TestMessage"
    }
    //Meta information declaration end

    final public class Builder : ExtendableMessageBuilder {
      fileprivate var builderResult:Google.Protobuf.NoGenericServicesTest.TestMessage = Google.Protobuf.NoGenericServicesTest.TestMessage()
      public func getMessage() -> Google.Protobuf.NoGenericServicesTest.TestMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasA:Bool {
           get {
                return builderResult.hasA
           }
      }
      public var a:Int32 {
           get {
                return builderResult.a
           }
           set (value) {
               builderResult.hasA = true
               builderResult.a = value
           }
      }
      @discardableResult
      public func setA(_ value:Int32) -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        self.a = value
        return self
      }
      @discardableResult
      public func clearA() -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder{
           builderResult.hasA = false
           builderResult.a = Int32(0)
           return self
      }
      override public var internalGetResult:ExtendableMessage {
           get {
               return builderResult
           }
      }
      @discardableResult
      override public func clear() -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        builderResult = Google.Protobuf.NoGenericServicesTest.TestMessage()
        return self
      }
      override public func clone() throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        return try Google.Protobuf.NoGenericServicesTest.TestMessage.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Google.Protobuf.NoGenericServicesTest.TestMessage {
        let returnMe:Google.Protobuf.NoGenericServicesTest.TestMessage = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:Google.Protobuf.NoGenericServicesTest.TestMessage) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        if other == Google.Protobuf.NoGenericServicesTest.TestMessage() {
         return self
        }
        if other.hasA {
             a = other.a
        }
        try mergeExtensionFields(other: other)
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            a = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        let resultDecodedBuilder = Google.Protobuf.NoGenericServicesTest.TestMessage.Builder()
        if let jsonValueA = jsonMap["a"] as? Int32 {
          resultDecodedBuilder.a = jsonValueA
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension Google.Protobuf.NoGenericServicesTest.TestMessage: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Google.Protobuf.NoGenericServicesTest.TestMessage> {
    var mergedArray = Array<Google.Protobuf.NoGenericServicesTest.TestMessage>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage? {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(data: data, extensionRegistry:Google.Protobuf.NoGenericServicesTest.UnittestNoGenericServicesRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.NoGenericServicesTest.TestMessage {
    return try Google.Protobuf.NoGenericServicesTest.TestMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
