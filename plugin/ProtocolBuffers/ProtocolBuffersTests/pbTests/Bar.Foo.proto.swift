// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file foo.proto

import Foundation
import ProtocolBuffers


internal struct Bar { }

internal func == (lhs: Bar.Foo, rhs: Bar.Foo) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasHello == rhs.hasHello) && (!lhs.hasHello || lhs.hello == rhs.hello)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

internal extension Bar {
  internal struct FooRoot {
    internal static var sharedInstance : FooRoot {
     struct Static {
         static let instance : FooRoot = FooRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final internal class Foo : GeneratedMessage, GeneratedMessageProtocol {
    private(set) var hasHello:Bool = false
    private(set) var hello:String = ""

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasHello {
        try output.writeString(1, value:hello)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasHello {
        serialize_size += hello.computeStringSize(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Bar.Foo> {
      var mergedArray = Array<Bar.Foo>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Bar.Foo? {
      return try Bar.Foo.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    internal class func parseFromData(data:NSData) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromData(data, extensionRegistry:Bar.FooRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
      return try Bar.Foo.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func getBuilder() -> Bar.Foo.Builder {
      return Bar.Foo.classBuilder() as! Bar.Foo.Builder
    }
    internal func getBuilder() -> Bar.Foo.Builder {
      return classBuilder() as! Bar.Foo.Builder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return Bar.Foo.Builder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return Bar.Foo.Builder()
    }
    internal func toBuilder() throws -> Bar.Foo.Builder {
      return try Bar.Foo.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Bar.Foo) throws -> Bar.Foo.Builder {
      return try Bar.Foo.Builder().mergeFrom(prototype)
    }
    override internal func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasHello {
        output += "\(indent) hello: \(hello) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasHello {
               hashCode = (hashCode &* 31) &+ hello.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Bar.Foo"
    }
    override internal func className() -> String {
        return "Bar.Foo"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Bar.Foo.self
    }
    //Meta information declaration end

    final internal class Builder : GeneratedMessageBuilder {
      private var builderResult:Bar.Foo = Bar.Foo()
      internal func getMessage() -> Bar.Foo {
          return builderResult
      }

      required override internal init () {
         super.init()
      }
      var hasHello:Bool {
           get {
                return builderResult.hasHello
           }
      }
      var hello:String {
           get {
                return builderResult.hello
           }
           set (value) {
               builderResult.hasHello = true
               builderResult.hello = value
           }
      }
      func setHello(value:String) -> Bar.Foo.Builder {
        self.hello = value
        return self
      }
      internal func clearHello() -> Bar.Foo.Builder{
           builderResult.hasHello = false
           builderResult.hello = ""
           return self
      }
      override internal var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      internal override func clear() -> Bar.Foo.Builder {
        builderResult = Bar.Foo()
        return self
      }
      internal override func clone() throws -> Bar.Foo.Builder {
        return try Bar.Foo.builderWithPrototype(builderResult)
      }
      internal override func build() throws -> Bar.Foo {
           try checkInitialized()
           return buildPartial()
      }
      internal func buildPartial() -> Bar.Foo {
        let returnMe:Bar.Foo = builderResult
        return returnMe
      }
      internal func mergeFrom(other:Bar.Foo) throws -> Bar.Foo.Builder {
        if other == Bar.Foo() {
         return self
        }
        if other.hasHello {
             hello = other.hello
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream) throws -> Bar.Foo.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10 :
            hello = try input.readString()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
