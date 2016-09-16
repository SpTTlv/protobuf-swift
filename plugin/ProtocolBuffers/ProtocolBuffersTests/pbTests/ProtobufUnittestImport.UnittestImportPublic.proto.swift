// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import_public.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension ProtobufUnittestImport{}

public extension ProtobufUnittestImport {
  public struct UnittestImportPublicRoot {
    public static var sharedInstance : UnittestImportPublicRoot {
     struct Static {
         static let instance : UnittestImportPublicRoot = UnittestImportPublicRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class PublicImportMessage : GeneratedMessage {

    public static func == (lhs: ProtobufUnittestImport.PublicImportMessage, rhs: ProtobufUnittestImport.PublicImportMessage) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var e:Int32 = Int32(0)
    public fileprivate(set) var hasE:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasE {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:e)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasE {
        serialize_size += e.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return ProtobufUnittestImport.PublicImportMessage.classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasE {
        jsonMap["e"] = e
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasE {
        output += "\(indent) e: \(e) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ e.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:ProtobufUnittestImport.PublicImportMessage = ProtobufUnittestImport.PublicImportMessage()
      public func getMessage() -> ProtobufUnittestImport.PublicImportMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasE:Bool {
           get {
                return builderResult.hasE
           }
      }
      public var e:Int32 {
           get {
                return builderResult.e
           }
           set (value) {
               builderResult.hasE = true
               builderResult.e = value
           }
      }
      @discardableResult
      public func setE(_ value:Int32) -> ProtobufUnittestImport.PublicImportMessage.Builder {
        self.e = value
        return self
      }
      @discardableResult
      public func clearE() -> ProtobufUnittestImport.PublicImportMessage.Builder{
           builderResult.hasE = false
           builderResult.e = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      @discardableResult
      override public func clear() -> ProtobufUnittestImport.PublicImportMessage.Builder {
        builderResult = ProtobufUnittestImport.PublicImportMessage()
        return self
      }
      override public func clone() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittestImport.PublicImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.PublicImportMessage {
        let returnMe:ProtobufUnittestImport.PublicImportMessage = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        if other == ProtobufUnittestImport.PublicImportMessage() {
         return self
        }
        if other.hasE {
             e = other.e
        }
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            e = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.PublicImportMessage.Builder()
        if let jsonValueE = jsonMap["e"] as? Int32 {
          resultDecodedBuilder.e = jsonValueE
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittestImport.PublicImportMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension ProtobufUnittestImport.PublicImportMessage: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittestImport.PublicImportMessage> {
    var mergedArray = Array<ProtobufUnittestImport.PublicImportMessage>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.PublicImportMessage? {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
    return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
