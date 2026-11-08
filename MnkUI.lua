/*                          jingohok
/*                  best dumper? you need
/*                  contact me not jonah
/*                  jonah is a loser im boss
/*                  skid v300 
/*                  https://discord.gg/r6vb93eEmq

/*  Roblox Version  : version-cec3ad5889b447cf
/*  Total Offsets   : 451
*/

#pragma once
#include <cstdint>
#include <string>

namespace Offsets {
    inline std::string ClientVersion = "version-cec3ad5889b447cf";

    namespace AirProperties {
         inline constexpr uintptr_t AirDensity = 0x18;
         inline constexpr uintptr_t GlobalWind = 0x3C;
    }

    namespace Atmosphere {
         inline constexpr uintptr_t Color = 0xA8;
         inline constexpr uintptr_t Decay = 0xB4;
         inline constexpr uintptr_t Density = 0xC0;
         inline constexpr uintptr_t Glare = 0xB8;
         inline constexpr uintptr_t Haze = 0xC8;
         inline constexpr uintptr_t Offset = 0xCC;
    }

    namespace BasePart {
         inline constexpr uintptr_t CastShadow = 0x125;
         inline constexpr uintptr_t ClusterNode = 0x180;
         inline constexpr uintptr_t Color3 = 0x198;
         inline constexpr uintptr_t Locked = 0x126;
         inline constexpr uintptr_t Massless = 0x127;
         inline constexpr uintptr_t Primitive = 0x178;
         inline constexpr uintptr_t Reflectance = 0xFC;
         inline constexpr uintptr_t Shape = 0x1A8;
         inline constexpr uintptr_t Transparency = 0x120;
    }

    namespace BloomEffect {
         inline constexpr uintptr_t Intensity = 0xA8;
         inline constexpr uintptr_t Size = 0xAC;
         inline constexpr uintptr_t Threshold = 0xB0;
    }

    namespace CachedItem {
         inline constexpr uintptr_t FileMeshData = 0x28;
    }

    namespace Camera {
         inline constexpr uintptr_t CFrame = 0xC8;
         inline constexpr uintptr_t CameraSubject = 0xB8;
         inline constexpr uintptr_t FieldOfView = 0x130;
         inline constexpr uintptr_t Position = 0xEC;
         inline constexpr uintptr_t Rotation = 0xC8;
         inline constexpr uintptr_t ViewportInt16 = 0x28C;
         inline constexpr uintptr_t ViewportSize = 0x2CC;
    }

    namespace CharacterMesh {
         inline constexpr uintptr_t BaseTextureId = 0xB8;
         inline constexpr uintptr_t BodyPart = 0x138;
         inline constexpr uintptr_t MeshId = 0xE8;
         inline constexpr uintptr_t OverlayTextureId = 0x118;
    }

    namespace ClassDescriptor {
         inline constexpr uintptr_t ClassName = 0x8;
         inline constexpr uintptr_t Creator = 0x230;
         inline constexpr uintptr_t EventDescriptors = 0x88;
         inline constexpr uintptr_t FunctionDescriptors = 0xD0;
         inline constexpr uintptr_t PropertyDescriptors = 0x40;
    }

    namespace Creator {
         inline constexpr uintptr_t MapEnd = 0x83DEC00;
         inline constexpr uintptr_t MapStart = 0x83DEBF8;
    }

    namespace DataModel {
         inline constexpr uintptr_t CreatorId = 0x178;
         inline constexpr uintptr_t GameId = 0x180;
         inline constexpr uintptr_t GameLoaded = 0x5D0;
         inline constexpr uintptr_t JobId = 0x110;
         inline constexpr uintptr_t PlaceId = 0x188;
         inline constexpr uintptr_t ServerIP = 0x5B8;
         inline constexpr uintptr_t Workspace = 0x150;
    }

    namespace Descriptor {
         inline constexpr uintptr_t Name = 0x8;
    }

    namespace DeviceD3D11Gfx {
         inline constexpr uintptr_t VTableRva = 0x6D03498;
    }

    namespace FakeDataModel {
         inline constexpr uintptr_t Pointer = 0x8BCFD50;
         inline constexpr uintptr_t RealDataModel = 0x1F8;
    }

    namespace FastCluster {
         inline constexpr uintptr_t VTableRva = 0x6D6FB58;
         inline constexpr uintptr_t VTableRvaSub = 0x6D6FC88;
    }

    namespace FastClusterBinding {
         inline constexpr uintptr_t VTableRva = 0x6D70C18;
    }

    namespace FastClusterEntity {
         inline constexpr uintptr_t VTableRva = 0x6D70CE8;
    }

    namespace FileMeshData {
         inline constexpr uintptr_t AabbMax = 0x18C;
         inline constexpr uintptr_t AabbMin = 0x180;
         inline constexpr uintptr_t Faces = 0x30;
         inline constexpr uintptr_t FacesEnd = 0x38;
         inline constexpr uintptr_t Vertices = 0x0;
         inline constexpr uintptr_t VerticesEnd = 0x8;
    }

    namespace Fire {
         inline constexpr uintptr_t FireProximityPrompt = 0x30E9D90;
    }

    namespace FunctionDescriptor {
         inline constexpr uintptr_t Function = 0x90;
    }

    namespace Functions {
         inline constexpr uintptr_t Clone = 0xFFFF82E6F9741118;
         inline constexpr uintptr_t Destroy = 0xFFFF82E6F9741138;
         inline constexpr uintptr_t FindPartOnRay = 0xFFFF82E6F9830818;
         inline constexpr uintptr_t FindPartOnRayWithIgnoreList = 0xFFFF82E6F9830898;
         inline constexpr uintptr_t FindPartOnRayWithWhitelist = 0xFFFF82E6F98308F8;
         inline constexpr uintptr_t FireServer = 0xFFFF82E6F96BED18;
         inline constexpr uintptr_t Print = 0x1C65A30;
         inline constexpr uintptr_t RaisePropertyChanged = 0xDEE980;
         inline constexpr uintptr_t Raycast = 0xFFFF82E6F9830558;
         inline constexpr uintptr_t SetParent = 0xD2DC90;
         inline constexpr uintptr_t SetParentInternal = 0x1CAFEB0;
         inline constexpr uintptr_t Shapecast = 0xFFFF82E6F98305F8;
    }

    namespace GeometryD3D11 {
         inline constexpr uintptr_t VTableRva = 0x6D03990;
    }

    namespace GuiBase2D {
         inline constexpr uintptr_t AbsolutePosition = 0xF8;
         inline constexpr uintptr_t AbsoluteRotation = 0xD8;
         inline constexpr uintptr_t AbsoluteSize = 0x104;
    }

    namespace GuiObject {
         inline constexpr uintptr_t Active = 0x598;
         inline constexpr uintptr_t AnchorPoint = 0x548;
         inline constexpr uintptr_t AutomaticSize = 0x550;
         inline constexpr uintptr_t BackgroundColor3 = 0x530;
         inline constexpr uintptr_t BackgroundTransparency = 0x554;
         inline constexpr uintptr_t BorderColor3 = 0x53C;
         inline constexpr uintptr_t BorderMode = 0x558;
         inline constexpr uintptr_t BorderSizePixel = 0x55C;
         inline constexpr uintptr_t ClipsDescendants = 0x599;
         inline constexpr uintptr_t GuiState = 0x568;
         inline constexpr uintptr_t Interactable = 0x59B;
         inline constexpr uintptr_t LayoutOrder = 0x56C;
         inline constexpr uintptr_t Position = 0x500;
         inline constexpr uintptr_t Rotation = 0xD8;
         inline constexpr uintptr_t Selectable = 0x59C;
         inline constexpr uintptr_t SelectionOrder = 0x588;
         inline constexpr uintptr_t Size = 0x520;
         inline constexpr uintptr_t SizeConstraint = 0x590;
         inline constexpr uintptr_t Visible = 0x59D;
         inline constexpr uintptr_t ZIndex = 0x594;
    }

    namespace Highlight {
         inline constexpr uintptr_t Adornee = 0xA8;
         inline constexpr uintptr_t DepthMode = 0xD0;
         inline constexpr uintptr_t Enabled = 0xE4;
         inline constexpr uintptr_t FillColor = 0xB8;
         inline constexpr uintptr_t FillTransparency = 0xD4;
         inline constexpr uintptr_t OutlineColor = 0xC4;
         inline constexpr uintptr_t OutlineTransparency = 0xDC;
    }

    namespace HopperBin {
         inline constexpr uintptr_t BinType = 0x458;
    }

    namespace Humanoid {
         inline constexpr uintptr_t AutoJumpEnabled = 0x1C4;
         inline constexpr uintptr_t AutoRotate = 0x1C5;
         inline constexpr uintptr_t AutomaticScalingEnabled = 0x1C6;
         inline constexpr uintptr_t BreakJointsOnDeath = 0x1C7;
         inline constexpr uintptr_t CameraOffset = 0x118;
         inline constexpr uintptr_t DisplayDistanceType = 0x170;
         inline constexpr uintptr_t EvaluateStateMachine = 0x1C8;
         inline constexpr uintptr_t Health = 0x180;
         inline constexpr uintptr_t HealthDisplayDistance = 0x178;
         inline constexpr uintptr_t HealthDisplayType = 0x17C;
         inline constexpr uintptr_t HipHeight = 0x184;
         inline constexpr uintptr_t JumpHeight = 0x190;
         inline constexpr uintptr_t JumpPower = 0x194;
         inline constexpr uintptr_t MaxHealth = 0x198;
         inline constexpr uintptr_t MaxSlopeAngle = 0x19C;
         inline constexpr uintptr_t NameDisplayDistance = 0x1A0;
         inline constexpr uintptr_t NameOcclusion = 0x1A4;
         inline constexpr uintptr_t RequiresNeck = 0x1CD;
         inline constexpr uintptr_t RigType = 0x1B0;
         inline constexpr uintptr_t SeatPart = 0xF8;
         inline constexpr uintptr_t Sit = 0x1CE;
         inline constexpr uintptr_t TargetPoint = 0x13C;
         inline constexpr uintptr_t UseJumpPower = 0x1D0;
         inline constexpr uintptr_t WalkSpeed = 0x1C0;
         inline constexpr uintptr_t WalkSpeedCheck = 0x39C;
         inline constexpr uintptr_t WalkToPoint = 0x154;
    }

    namespace ICreator {
         inline constexpr uintptr_t Create = 0x0;
    }

    namespace InputObject {
         inline constexpr uintptr_t MousePosition = 0x58;
    }

    namespace Instance {
         inline constexpr uintptr_t ChildrenEnd = 0x8;
         inline constexpr uintptr_t ChildrenStart = 0x78;
         inline constexpr uintptr_t ChildrenStride = 0x10;
         inline constexpr uintptr_t ClassBase = 0x1B0;
         inline constexpr uintptr_t ClassDescriptor = 0x18;
         inline constexpr uintptr_t Name = 0x8;
         inline constexpr uintptr_t NameContainer = 0x70;
         inline constexpr uintptr_t Parent = 0x68;
    }

    namespace InstancedBinding2 {
         inline constexpr uintptr_t Cluster = 0x68;
    }

    namespace InstancedCluster2 {
         inline constexpr uintptr_t VTableRva = 0x6D6EA08;
    }

    namespace Lighting {
         inline constexpr uintptr_t Ambient = 0xC0;
         inline constexpr uintptr_t Atmosphere = 0x1C8;
         inline constexpr uintptr_t Brightness = 0x108;
         inline constexpr uintptr_t ClockTime = 0xB8;
         inline constexpr uintptr_t ColorShift_Bottom = 0xCC;
         inline constexpr uintptr_t ColorShift_Top = 0xD8;
         inline constexpr uintptr_t EnvironmentDiffuseScale = 0x10C;
         inline constexpr uintptr_t EnvironmentSpecularScale = 0x110;
         inline constexpr uintptr_t ExposureCompensation = 0x114;
         inline constexpr uintptr_t FogColor = 0xE4;
         inline constexpr uintptr_t FogEnd = 0x11C;
         inline constexpr uintptr_t FogStart = 0x120;
         inline constexpr uintptr_t OutdoorAmbient = 0xF0;
         inline constexpr uintptr_t ShadowSoftness = 0xE8;
         inline constexpr uintptr_t Sky = 0x1B8;
    }

    namespace LightingParameters {
         inline constexpr uintptr_t GeographicLatitude = 0x124;
         inline constexpr uintptr_t LightColor = 0x14C;
         inline constexpr uintptr_t LightDirection = 0x158;
         inline constexpr uintptr_t SkyAmbient = 0x140;
         inline constexpr uintptr_t SkyAmbient2 = 0x128;
         inline constexpr uintptr_t Source = 0x164;
         inline constexpr uintptr_t TrueMoonPosition = 0x174;
         inline constexpr uintptr_t TrueSunPosition = 0x168;
    }

    namespace LocalScript {
         inline constexpr uintptr_t GUID = 0xC0;
    }

    namespace LruHolder {
         inline constexpr uintptr_t MemEnforcedLRUCache = 0x20;
    }

    namespace LruNode {
         inline constexpr uintptr_t CachedItem = 0x38;
         inline constexpr uintptr_t MeshId = 0x10;
         inline constexpr uintptr_t Next = 0x0;
    }

    namespace MaterialColors {
         inline constexpr uintptr_t Asphalt = 0x90;
         inline constexpr uintptr_t Basalt = 0x87;
         inline constexpr uintptr_t Brick = 0x6F;
         inline constexpr uintptr_t Cobblestone = 0x93;
         inline constexpr uintptr_t Concrete = 0x6C;
         inline constexpr uintptr_t CrackedLava = 0x8D;
         inline constexpr uintptr_t Glacier = 0x7B;
         inline constexpr uintptr_t Grass = 0x66;
         inline constexpr uintptr_t Ground = 0x8A;
         inline constexpr uintptr_t Ice = 0x96;
         inline constexpr uintptr_t LeafyGrass = 0x99;
         inline constexpr uintptr_t Limestone = 0x9F;
         inline constexpr uintptr_t Mud = 0x84;
         inline constexpr uintptr_t Pavement = 0xA2;
         inline constexpr uintptr_t Rock = 0x78;
         inline constexpr uintptr_t Salt = 0x9C;
         inline constexpr uintptr_t Sand = 0x72;
         inline constexpr uintptr_t Sandstone = 0x81;
         inline constexpr uintptr_t Slate = 0x69;
         inline constexpr uintptr_t Snow = 0x7E;
         inline constexpr uintptr_t WoodPlanks = 0x75;
    }

    namespace MemEnforcedLRUCache {
         inline constexpr uintptr_t Head = 0x8;
    }

    namespace MeshContentProvider {
         inline constexpr uintptr_t LruHolder = 0xC8;
    }

    namespace MeshData {
         inline constexpr uintptr_t FaceEnd = 0x38;
         inline constexpr uintptr_t FaceStart = 0x30;
         inline constexpr uintptr_t VertexEnd = 0x8;
         inline constexpr uintptr_t VertexStart = 0x0;
    }

    namespace MeshPart {
         inline constexpr uintptr_t MeshId = 0x300;
         inline constexpr uintptr_t TextureId = 0x330;
    }

    namespace Model {
         inline constexpr uintptr_t PrimaryPart = 0x248;
         inline constexpr uintptr_t Scale = 0x134;
    }

    namespace ModuleScript {
         inline constexpr uintptr_t GUID = 0xC0;
         inline constexpr uintptr_t IsRobloxScript = 0x158;
    }

    namespace MouseService {
         inline constexpr uintptr_t InputObject = 0xF0;
    }

    namespace Player {
         inline constexpr uintptr_t AccountAge = 0x34C;
         inline constexpr uintptr_t Character = 0x288;
         inline constexpr uintptr_t DisplayName = 0x128;
         inline constexpr uintptr_t HealthDisplayDistance = 0x384;
         inline constexpr uintptr_t LocaleId = 0x748;
         inline constexpr uintptr_t NameDisplayDistance = 0x394;
         inline constexpr uintptr_t Team = 0x2C8;
         inline constexpr uintptr_t TeamColor = 0x3A0;
         inline constexpr uintptr_t UserId = 0xC0;
    }

    namespace Players {
         inline constexpr uintptr_t LocalPlayer = 0x120;
    }

    namespace Primitive {
         inline constexpr uintptr_t AssemblyAngularVelocity = 0xEC;
         inline constexpr uintptr_t AssemblyLinearVelocity = 0xE0;
         inline constexpr uintptr_t CFrame = 0xB0;
         inline constexpr uintptr_t Material = 0x246;
         inline constexpr uintptr_t Orientation = 0xB0;
         inline constexpr uintptr_t Part = 0x210;
         inline constexpr uintptr_t Position = 0xD4;
         inline constexpr uintptr_t PrimitiveFlags = 0x1B6;
         inline constexpr uintptr_t Rotation = 0xB0;
         inline constexpr uintptr_t Size = 0x1BC;
    }

    namespace PrimitiveFlags {
         inline constexpr uintptr_t Anchored = 0x2;
         inline constexpr uintptr_t CanCollide = 0x8;
         inline constexpr uintptr_t CanQuery = 0x20;
         inline constexpr uintptr_t CanTouch = 0x10;
    }

    namespace PropertyDescriptor {
         inline constexpr uintptr_t GetSetImpl = 0x98;
         inline constexpr uintptr_t TType = 0x70;
    }

    namespace ProximityPrompt {
         inline constexpr uintptr_t ActionText = 0xA0;
         inline constexpr uintptr_t Enabled = 0x126;
         inline constexpr uintptr_t HoldDuration = 0x110;
         inline constexpr uintptr_t KeyboardKeyCode = 0x114;
         inline constexpr uintptr_t MaxActivationDistance = 0x118;
         inline constexpr uintptr_t ObjectText = 0xC0;
         inline constexpr uintptr_t RequiresLineOfSight = 0x127;
    }

    namespace Reflection {
         inline constexpr uintptr_t CreatorTable = 0x83DEBF8;
         inline constexpr uintptr_t NameRegistry = 0x827B210;
    }

    namespace ReflectionType {
         inline constexpr uintptr_t AdReward = 0x60;
         inline constexpr uintptr_t AnimTrackMetadata = 0x66;
         inline constexpr uintptr_t AnimTrackPlayState = 0x65;
         inline constexpr uintptr_t AnimTrackWeight = 0x67;
         inline constexpr uintptr_t AnimationContext = 0x54;
         inline constexpr uintptr_t AnimationMask = 0x4D;
         inline constexpr uintptr_t AnimationMaskModifier = 0x5B;
         inline constexpr uintptr_t AnimationPose = 0x4E;
         inline constexpr uintptr_t Array = 0x24;
         inline constexpr uintptr_t ArticulatedJoint = 0x53;
         inline constexpr uintptr_t AssetContentMap = 0x61;
         inline constexpr uintptr_t Axes = 0x16;
         inline constexpr uintptr_t BinaryString = 0x1E;
         inline constexpr uintptr_t Bool = 0x1;
         inline constexpr uintptr_t BrickColor = 0x1C;
         inline constexpr uintptr_t Buffer = 0x56;
         inline constexpr uintptr_t CSGPropertyData = 0x48;
         inline constexpr uintptr_t CatalogSearchParams = 0x46;
         inline constexpr uintptr_t CellId = 0x19;
         inline constexpr uintptr_t ClipEvaluator = 0x4F;
         inline constexpr uintptr_t CollectionHandle = 0x20;
         inline constexpr uintptr_t Color3 = 0x11;
         inline constexpr uintptr_t Color3uint8 = 0x12;
         inline constexpr uintptr_t ColorSequence = 0x2A;
         inline constexpr uintptr_t ColorSequenceKeypoint = 0x2B;
         inline constexpr uintptr_t Connection = 0x30;
         inline constexpr uintptr_t Content = 0x5C;
         inline constexpr uintptr_t ContentId = 0x31;
         inline constexpr uintptr_t CoordinateFrame = 0x10;
         inline constexpr uintptr_t DateTime = 0x40;
         inline constexpr uintptr_t DebugTable = 0x45;
         inline constexpr uintptr_t DescribedBase = 0x32;
         inline constexpr uintptr_t Dictionary = 0x25;
         inline constexpr uintptr_t DockWidgetPluginGuiInfo = 0x38;
         inline constexpr uintptr_t Double = 0x5;
         inline constexpr uintptr_t Enum = 0x21;
         inline constexpr uintptr_t EventInstance = 0x36;
         inline constexpr uintptr_t Faces = 0x15;
         inline constexpr uintptr_t FacsReplicationData = 0x5A;
         inline constexpr uintptr_t Float = 0x4;
         inline constexpr uintptr_t FloatCurveKey = 0x3C;
         inline constexpr uintptr_t Font = 0x4A;
         inline constexpr uintptr_t Function = 0x29;
         inline constexpr uintptr_t GenericFunction = 0x28;
         inline constexpr uintptr_t GuidData = 0x1A;
         inline constexpr uintptr_t Instance = 0x8;
         inline constexpr uintptr_t InstanceRef = 0x51;
         inline constexpr uintptr_t Instances = 0x9;
         inline constexpr uintptr_t Int = 0x2;
         inline constexpr uintptr_t Int64 = 0x3;
         inline constexpr uintptr_t Integer = 0x57;
         inline constexpr uintptr_t LazyTable = 0x44;
         inline constexpr uintptr_t Map = 0x26;
         inline constexpr uintptr_t NetAssetHandle = 0x5D;
         inline constexpr uintptr_t NetAssetRef = 0x5E;
         inline constexpr uintptr_t Null = 0x0;
         inline constexpr uintptr_t NumberRange = 0x2C;
         inline constexpr uintptr_t NumberSequence = 0x2D;
         inline constexpr uintptr_t NumberSequenceKeypoint = 0x2E;
         inline constexpr uintptr_t Object = 0x5F;
         inline constexpr uintptr_t OpenCloudModel = 0x50;
         inline constexpr uintptr_t OptionalCoordinateFrame = 0x47;
         inline constexpr uintptr_t OverlapParams = 0x43;
         inline constexpr uintptr_t Path2DControlPoint = 0x58;
         inline constexpr uintptr_t PathWaypoint = 0x3B;
         inline constexpr uintptr_t PhysicalProperties = 0x1B;
         inline constexpr uintptr_t PluginDrag = 0x39;
         inline constexpr uintptr_t Property = 0x22;
         inline constexpr uintptr_t ProtectedString = 0x7;
         inline constexpr uintptr_t Random = 0x3A;
         inline constexpr uintptr_t Ray = 0xA;
         inline constexpr uintptr_t RaycastParams = 0x41;
         inline constexpr uintptr_t RaycastResult = 0x42;
         inline constexpr uintptr_t Rect2D = 0xF;
         inline constexpr uintptr_t RefType = 0x33;
         inline constexpr uintptr_t Region3 = 0x17;
         inline constexpr uintptr_t Region3int16 = 0x18;
         inline constexpr uintptr_t ReplicationPV = 0x59;
         inline constexpr uintptr_t RotationCurveKey = 0x3D;
         inline constexpr uintptr_t ScopedInstanceIdentity = 0x68;
         inline constexpr uintptr_t Secret = 0x55;
         inline constexpr uintptr_t SecurityCapabilities = 0x52;
         inline constexpr uintptr_t SharedString = 0x3F;
         inline constexpr uintptr_t SharedTable = 0x4B;
         inline constexpr uintptr_t SharedTableIterator = 0x4C;
         inline constexpr uintptr_t SlimReplicationData = 0x62;
         inline constexpr uintptr_t String = 0x6;
         inline constexpr uintptr_t Surface = 0x1F;
         inline constexpr uintptr_t SystemAddress = 0x1D;
         inline constexpr uintptr_t Tuple = 0x23;
         inline constexpr uintptr_t TweenInfo = 0x37;
         inline constexpr uintptr_t UDim = 0x13;
         inline constexpr uintptr_t UDim2 = 0x14;
         inline constexpr uintptr_t UniqueId = 0x49;
         inline constexpr uintptr_t User = 0x63;
         inline constexpr uintptr_t ValueCurveKey = 0x3E;
         inline constexpr uintptr_t Variant = 0x27;
         inline constexpr uintptr_t Vector2 = 0xB;
         inline constexpr uintptr_t Vector2int16 = 0xD;
         inline constexpr uintptr_t Vector3 = 0xC;
         inline constexpr uintptr_t Vector3int16 = 0xE;
         inline constexpr uintptr_t WebViewParams = 0x64;
    }

    namespace RenderView {
         inline constexpr uintptr_t DeviceD3D11 = 0x8;
         inline constexpr uintptr_t LightingValid = 0x278;
         inline constexpr uintptr_t VisualEngine = 0x18;
    }

    namespace RobloxString {
         inline constexpr uintptr_t Size = 0x10;
         inline constexpr uintptr_t SsoCapacity = 0xF;
    }

    namespace ScriptContext {
         inline constexpr uintptr_t RequireBypass = 0x975;
    }

    namespace Seat {
         inline constexpr uintptr_t Occupant = 0x208;
    }

    namespace Sky {
         inline constexpr uintptr_t MoonAngularSize = 0x234;
         inline constexpr uintptr_t MoonTextureId = 0xB8;
         inline constexpr uintptr_t SkyboxBk = 0xE8;
         inline constexpr uintptr_t SkyboxDn = 0x118;
         inline constexpr uintptr_t SkyboxFt = 0x148;
         inline constexpr uintptr_t SkyboxLf = 0x178;
         inline constexpr uintptr_t SkyboxOrientation = 0x228;
         inline constexpr uintptr_t SkyboxRt = 0x1A8;
         inline constexpr uintptr_t SkyboxUp = 0x1D8;
         inline constexpr uintptr_t StarCount = 0x238;
         inline constexpr uintptr_t SunAngularSize = 0x23C;
         inline constexpr uintptr_t SunTextureId = 0x208;
    }

    namespace SmoothClusterNode {
         inline constexpr uintptr_t VTableRva = 0x6D70A98;
    }

    namespace SpecialMesh {
         inline constexpr uintptr_t MeshId = 0xE8;
         inline constexpr uintptr_t Offset = 0xA8;
         inline constexpr uintptr_t Scale = 0xB4;
         inline constexpr uintptr_t TextureId = 0x118;
    }

    namespace TaskScheduler {
         inline constexpr uintptr_t MaxFPS = 0xB0;
         inline constexpr uintptr_t MaxFps = 0xB0;
         inline constexpr uintptr_t Pointer = 0x8B79128;
    }

    namespace Team {
         inline constexpr uintptr_t TeamColor = 0xA8;
    }

    namespace TechniqueArray {
         inline constexpr uintptr_t BeginOffset = 0x0;
         inline constexpr uintptr_t EndOffset = 0x8;
    }

    namespace Terrain {
         inline constexpr uintptr_t GrassLength = 0x1E0;
         inline constexpr uintptr_t MaterialColors = 0x280;
         inline constexpr uintptr_t WaterColor = 0x1D0;
         inline constexpr uintptr_t WaterReflectance = 0x1E8;
         inline constexpr uintptr_t WaterTransparency = 0x1D4;
         inline constexpr uintptr_t WaterWaveSize = 0x1F0;
         inline constexpr uintptr_t WaterWaveSpeed = 0x1F4;
    }

    namespace TextButton {
         inline constexpr uintptr_t AutoButtonColor = 0x9E4;
         inline constexpr uintptr_t ContentText = 0xE20;
         inline constexpr uintptr_t LineHeight = 0xF38;
         inline constexpr uintptr_t LocalizedText = 0xE20;
         inline constexpr uintptr_t MaxVisibleGraphemes = 0x1154;
         inline constexpr uintptr_t Modal = 0x9E5;
         inline constexpr uintptr_t RichText = 0x1036;
         inline constexpr uintptr_t Selected = 0x9E6;
         inline constexpr uintptr_t Text = 0xE20;
         inline constexpr uintptr_t TextColor3 = 0x1138;
         inline constexpr uintptr_t TextDirection = 0xFD8;
         inline constexpr uintptr_t TextScaled = 0xE09;
         inline constexpr uintptr_t TextSize = 0x115C;
         inline constexpr uintptr_t TextStrokeColor3 = 0x1144;
         inline constexpr uintptr_t TextStrokeTransparency = 0x1160;
         inline constexpr uintptr_t TextTransparency = 0x1164;
         inline constexpr uintptr_t TextTruncate = 0x1168;
         inline constexpr uintptr_t TextWrapped = 0x1030;
         inline constexpr uintptr_t TextXAlignment = 0x116C;
         inline constexpr uintptr_t TextYAlignment = 0xF80;
    }

    namespace TextLabel {
         inline constexpr uintptr_t ContentText = 0xBA0;
         inline constexpr uintptr_t LineHeight = 0xCB8;
         inline constexpr uintptr_t LocalizedText = 0xBA0;
         inline constexpr uintptr_t MaxVisibleGraphemes = 0xED4;
         inline constexpr uintptr_t RichText = 0xDB6;
         inline constexpr uintptr_t Text = 0xBA0;
         inline constexpr uintptr_t TextColor3 = 0xEB8;
         inline constexpr uintptr_t TextDirection = 0xD58;
         inline constexpr uintptr_t TextScaled = 0xDAE;
         inline constexpr uintptr_t TextSize = 0xEDC;
         inline constexpr uintptr_t TextStrokeColor3 = 0xEC4;
         inline constexpr uintptr_t TextStrokeTransparency = 0xEE0;
         inline constexpr uintptr_t TextTransparency = 0xEE4;
         inline constexpr uintptr_t TextTruncate = 0xEE8;
         inline constexpr uintptr_t TextWrapped = 0xDB0;
         inline constexpr uintptr_t TextXAlignment = 0xEEC;
         inline constexpr uintptr_t TextYAlignment = 0xD00;
    }

    namespace Textures {
         inline constexpr uintptr_t Texture_Texture = 0x1D0;
    }

    namespace Tool {
         inline constexpr uintptr_t CanBeDropped = 0x4A8;
         inline constexpr uintptr_t Enabled = 0x4A9;
         inline constexpr uintptr_t Grip = 0x478;
         inline constexpr uintptr_t GripForward = 0x490;
         inline constexpr uintptr_t GripPos = 0x49C;
         inline constexpr uintptr_t GripRight = 0x478;
         inline constexpr uintptr_t GripUp = 0x484;
         inline constexpr uintptr_t ManualActivationOnly = 0x4AA;
         inline constexpr uintptr_t RequiresHandle = 0x4AB;
         inline constexpr uintptr_t Tooltip = 0x458;
    }

    namespace Types {
         inline constexpr uintptr_t AllTypes = 0x8B64578;
    }

    namespace Value {
         inline constexpr uintptr_t Value = 0xA8;
    }

    namespace VehicleSeat {
         inline constexpr uintptr_t MaxSpeed = 0x218;
         inline constexpr uintptr_t Occupant = 0x1F8;
         inline constexpr uintptr_t SteerFloat = 0x21C;
         inline constexpr uintptr_t ThrottleFloat = 0x220;
         inline constexpr uintptr_t Torque = 0x224;
         inline constexpr uintptr_t TurnSpeed = 0x228;
    }

    namespace VisualEngine {
         inline constexpr uintptr_t Dimensions = 0xB10;
         inline constexpr uintptr_t FakeDataModel = 0xAF0;
         inline constexpr uintptr_t Pointer = 0x8656E40;
         inline constexpr uintptr_t RenderView = 0xC30;
         inline constexpr uintptr_t ViewMatrix = 0x1B0;
    }

    namespace Workspace {
         inline constexpr uintptr_t CurrentCamera = 0x4A8;
         inline constexpr uintptr_t DistributedGameTime = 0x4C8;
         inline constexpr uintptr_t ReadOnlyGravity = 0x9C8;
         inline constexpr uintptr_t World = 0x400;
    }

    namespace World {
         inline constexpr uintptr_t AirProperties = 0x238;
         inline constexpr uintptr_t Gravity = 0x220;
         inline constexpr uintptr_t Primitives = 0x2C8;
         inline constexpr uintptr_t WorldSteps = 0x740;
    }

    namespace WorldRoot {
         inline constexpr uintptr_t RaycastBoundDesc = 0x8364BB0;
         inline constexpr uintptr_t RaycastBoundFn = 0x90;
    }

}
