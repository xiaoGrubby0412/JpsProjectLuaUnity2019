-- auto generate. don't modify.
error("don't run")

---@class LuaInjectionStation
---@field NOT_INJECTION_FLAG number @[static]
---@field INVALID_INJECTION_FLAG number @[static]
local LuaInjectionStation = {}
---@param index number
---@param injectFlag number
---@param func LuaFunction
function LuaInjectionStation.CacheInjectFunction(index, injectFlag, func) end
function LuaInjectionStation.Clear() end

---@class InjectType : Enum
---@field None number @[static]
---@field After number @[static]
---@field Before number @[static]
---@field Replace number @[static]
---@field ReplaceWithPreInvokeBase number @[static]
---@field ReplaceWithPostInvokeBase number @[static]
---@field value__ number
local InjectType = {}

---@class Debugger
---@field useLog boolean @[static]
---@field threadStack string @[static]
---@field logger ILogger @[static]
local Debugger = {}
---@param str string
function Debugger.Log(str) end
---@param message Object
function Debugger.Log(message) end
---@param str string
---@param arg0 Object
function Debugger.Log(str, arg0) end
---@param str string
---@param arg0 Object
---@param arg1 Object
function Debugger.Log(str, arg0, arg1) end
---@param str string
---@param arg0 Object
---@param arg1 Object
---@param arg2 Object
function Debugger.Log(str, arg0, arg1, arg2) end
---@param str string
---@param param Object[]
function Debugger.Log(str, param) end
---@param str string
function Debugger.LogWarning(str) end
---@param message Object
function Debugger.LogWarning(message) end
---@param str string
---@param arg0 Object
function Debugger.LogWarning(str, arg0) end
---@param str string
---@param arg0 Object
---@param arg1 Object
function Debugger.LogWarning(str, arg0, arg1) end
---@param str string
---@param arg0 Object
---@param arg1 Object
---@param arg2 Object
function Debugger.LogWarning(str, arg0, arg1, arg2) end
---@param str string
---@param param Object[]
function Debugger.LogWarning(str, param) end
---@param str string
function Debugger.LogError(str) end
---@param message Object
function Debugger.LogError(message) end
---@param str string
---@param arg0 Object
function Debugger.LogError(str, arg0) end
---@param str string
---@param arg0 Object
---@param arg1 Object
function Debugger.LogError(str, arg0, arg1) end
---@param str string
---@param arg0 Object
---@param arg1 Object
---@param arg2 Object
function Debugger.LogError(str, arg0, arg1, arg2) end
---@param str string
---@param param Object[]
function Debugger.LogError(str, param) end
---@param e Exception
function Debugger.LogException(e) end
---@param str string
---@param e Exception
function Debugger.LogException(str, e) end

---@class Component : Object
---@field transform Transform
---@field gameObject GameObject
---@field tag string
local Component = {}
---@param type Type
---@return Component
function Component:GetComponent(type) end
---@return T
function Component:GetComponent() end
---@param type Type
---@param component Component&
---@return boolean
function Component:TryGetComponent(type, component) end
---@param component T&
---@return boolean
function Component:TryGetComponent(component) end
---@param type string
---@return Component
function Component:GetComponent(type) end
---@param t Type
---@param includeInactive boolean
---@return Component
function Component:GetComponentInChildren(t, includeInactive) end
---@param t Type
---@return Component
function Component:GetComponentInChildren(t) end
---@param includeInactive boolean
---@return T
function Component:GetComponentInChildren(includeInactive) end
---@return T
function Component:GetComponentInChildren() end
---@param t Type
---@param includeInactive boolean
---@return Component[]
function Component:GetComponentsInChildren(t, includeInactive) end
---@param t Type
---@return Component[]
function Component:GetComponentsInChildren(t) end
---@param includeInactive boolean
---@return T[]
function Component:GetComponentsInChildren(includeInactive) end
---@param includeInactive boolean
---@param result List<T>
function Component:GetComponentsInChildren(includeInactive, result) end
---@return T[]
function Component:GetComponentsInChildren() end
---@param results List<T>
function Component:GetComponentsInChildren(results) end
---@param t Type
---@return Component
function Component:GetComponentInParent(t) end
---@return T
function Component:GetComponentInParent() end
---@param t Type
---@param includeInactive boolean
---@return Component[]
function Component:GetComponentsInParent(t, includeInactive) end
---@param t Type
---@return Component[]
function Component:GetComponentsInParent(t) end
---@param includeInactive boolean
---@return T[]
function Component:GetComponentsInParent(includeInactive) end
---@param includeInactive boolean
---@param results List<T>
function Component:GetComponentsInParent(includeInactive, results) end
---@return T[]
function Component:GetComponentsInParent() end
---@param type Type
---@return Component[]
function Component:GetComponents(type) end
---@param type Type
---@param results List<Component>
function Component:GetComponents(type, results) end
---@param results List<T>
function Component:GetComponents(results) end
---@return T[]
function Component:GetComponents() end
---@param tag string
---@return boolean
function Component:CompareTag(tag) end
---@param methodName string
---@param value Object
---@param options number
function Component:SendMessageUpwards(methodName, value, options) end
---@param methodName string
---@param value Object
function Component:SendMessageUpwards(methodName, value) end
---@param methodName string
function Component:SendMessageUpwards(methodName) end
---@param methodName string
---@param options number
function Component:SendMessageUpwards(methodName, options) end
---@param methodName string
---@param value Object
function Component:SendMessage(methodName, value) end
---@param methodName string
function Component:SendMessage(methodName) end
---@param methodName string
---@param value Object
---@param options number
function Component:SendMessage(methodName, value, options) end
---@param methodName string
---@param options number
function Component:SendMessage(methodName, options) end
---@param methodName string
---@param parameter Object
---@param options number
function Component:BroadcastMessage(methodName, parameter, options) end
---@param methodName string
---@param parameter Object
function Component:BroadcastMessage(methodName, parameter) end
---@param methodName string
function Component:BroadcastMessage(methodName) end
---@param methodName string
---@param options number
function Component:BroadcastMessage(methodName, options) end

---@class Transform : Component
---@field position Vector3
---@field localPosition Vector3
---@field eulerAngles Vector3
---@field localEulerAngles Vector3
---@field right Vector3
---@field up Vector3
---@field forward Vector3
---@field rotation Quaternion
---@field localRotation Quaternion
---@field localScale Vector3
---@field parent Transform
---@field worldToLocalMatrix Matrix4x4
---@field localToWorldMatrix Matrix4x4
---@field root Transform
---@field childCount number
---@field lossyScale Vector3
---@field hasChanged boolean
---@field hierarchyCapacity number
---@field hierarchyCount number
local Transform = {}
---@param p Transform
function Transform:SetParent(p) end
---@param parent Transform
---@param worldPositionStays boolean
function Transform:SetParent(parent, worldPositionStays) end
---@param position Vector3
---@param rotation Quaternion
function Transform:SetPositionAndRotation(position, rotation) end
---@param translation Vector3
---@param relativeTo number
function Transform:Translate(translation, relativeTo) end
---@param translation Vector3
function Transform:Translate(translation) end
---@param x number
---@param y number
---@param z number
---@param relativeTo number
function Transform:Translate(x, y, z, relativeTo) end
---@param x number
---@param y number
---@param z number
function Transform:Translate(x, y, z) end
---@param translation Vector3
---@param relativeTo Transform
function Transform:Translate(translation, relativeTo) end
---@param x number
---@param y number
---@param z number
---@param relativeTo Transform
function Transform:Translate(x, y, z, relativeTo) end
---@param eulers Vector3
---@param relativeTo number
function Transform:Rotate(eulers, relativeTo) end
---@param eulers Vector3
function Transform:Rotate(eulers) end
---@param xAngle number
---@param yAngle number
---@param zAngle number
---@param relativeTo number
function Transform:Rotate(xAngle, yAngle, zAngle, relativeTo) end
---@param xAngle number
---@param yAngle number
---@param zAngle number
function Transform:Rotate(xAngle, yAngle, zAngle) end
---@param axis Vector3
---@param angle number
---@param relativeTo number
function Transform:Rotate(axis, angle, relativeTo) end
---@param axis Vector3
---@param angle number
function Transform:Rotate(axis, angle) end
---@param point Vector3
---@param axis Vector3
---@param angle number
function Transform:RotateAround(point, axis, angle) end
---@param target Transform
---@param worldUp Vector3
function Transform:LookAt(target, worldUp) end
---@param target Transform
function Transform:LookAt(target) end
---@param worldPosition Vector3
---@param worldUp Vector3
function Transform:LookAt(worldPosition, worldUp) end
---@param worldPosition Vector3
function Transform:LookAt(worldPosition) end
---@param direction Vector3
---@return Vector3
function Transform:TransformDirection(direction) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:TransformDirection(x, y, z) end
---@param direction Vector3
---@return Vector3
function Transform:InverseTransformDirection(direction) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:InverseTransformDirection(x, y, z) end
---@param vector Vector3
---@return Vector3
function Transform:TransformVector(vector) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:TransformVector(x, y, z) end
---@param vector Vector3
---@return Vector3
function Transform:InverseTransformVector(vector) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:InverseTransformVector(x, y, z) end
---@param position Vector3
---@return Vector3
function Transform:TransformPoint(position) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:TransformPoint(x, y, z) end
---@param position Vector3
---@return Vector3
function Transform:InverseTransformPoint(position) end
---@param x number
---@param y number
---@param z number
---@return Vector3
function Transform:InverseTransformPoint(x, y, z) end
function Transform:DetachChildren() end
function Transform:SetAsFirstSibling() end
function Transform:SetAsLastSibling() end
---@param index number
function Transform:SetSiblingIndex(index) end
---@return number
function Transform:GetSiblingIndex() end
---@param n string
---@return Transform
function Transform:Find(n) end
---@param parent Transform
---@return boolean
function Transform:IsChildOf(parent) end
---@return IEnumerator
function Transform:GetEnumerator() end
---@param index number
---@return Transform
function Transform:GetChild(index) end

---@class Material : Object
---@field shader Shader
---@field color Color
---@field mainTexture Texture
---@field mainTextureOffset Vector2
---@field mainTextureScale Vector2
---@field renderQueue number
---@field globalIlluminationFlags number
---@field doubleSidedGI boolean
---@field enableInstancing boolean
---@field passCount number
---@field shaderKeywords string[]
local Material = {}
---@param nameID number
---@return boolean
function Material:HasProperty(nameID) end
---@param name string
---@return boolean
function Material:HasProperty(name) end
---@param keyword string
function Material:EnableKeyword(keyword) end
---@param keyword string
function Material:DisableKeyword(keyword) end
---@param keyword string
---@return boolean
function Material:IsKeywordEnabled(keyword) end
---@param passName string
---@param enabled boolean
function Material:SetShaderPassEnabled(passName, enabled) end
---@param passName string
---@return boolean
function Material:GetShaderPassEnabled(passName) end
---@param pass number
---@return string
function Material:GetPassName(pass) end
---@param passName string
---@return number
function Material:FindPass(passName) end
---@param tag string
---@param val string
function Material:SetOverrideTag(tag, val) end
---@param tag string
---@param searchFallbacks boolean
---@param defaultValue string
---@return string
function Material:GetTag(tag, searchFallbacks, defaultValue) end
---@param tag string
---@param searchFallbacks boolean
---@return string
function Material:GetTag(tag, searchFallbacks) end
---@param start Material
---@param endd Material
---@param t number
function Material:Lerp(start, endd, t) end
---@param pass number
---@return boolean
function Material:SetPass(pass) end
---@param mat Material
function Material:CopyPropertiesFromMaterial(mat) end
---@return number
function Material:ComputeCRC() end
---@return string[]
function Material:GetTexturePropertyNames() end
---@return number[]
function Material:GetTexturePropertyNameIDs() end
---@param outNames List<string>
function Material:GetTexturePropertyNames(outNames) end
---@param outNames List<number>
function Material:GetTexturePropertyNameIDs(outNames) end
---@param name string
---@param value number
function Material:SetFloat(name, value) end
---@param nameID number
---@param value number
function Material:SetFloat(nameID, value) end
---@param name string
---@param value number
function Material:SetInt(name, value) end
---@param nameID number
---@param value number
function Material:SetInt(nameID, value) end
---@param name string
---@param value Color
function Material:SetColor(name, value) end
---@param nameID number
---@param value Color
function Material:SetColor(nameID, value) end
---@param name string
---@param value Vector4
function Material:SetVector(name, value) end
---@param nameID number
---@param value Vector4
function Material:SetVector(nameID, value) end
---@param name string
---@param value Matrix4x4
function Material:SetMatrix(name, value) end
---@param nameID number
---@param value Matrix4x4
function Material:SetMatrix(nameID, value) end
---@param name string
---@param value Texture
function Material:SetTexture(name, value) end
---@param nameID number
---@param value Texture
function Material:SetTexture(nameID, value) end
---@param name string
---@param value RenderTexture
---@param element number
function Material:SetTexture(name, value, element) end
---@param nameID number
---@param value RenderTexture
---@param element number
function Material:SetTexture(nameID, value, element) end
---@param name string
---@param value ComputeBuffer
function Material:SetBuffer(name, value) end
---@param nameID number
---@param value ComputeBuffer
function Material:SetBuffer(nameID, value) end
---@param name string
---@param value ComputeBuffer
---@param offset number
---@param size number
function Material:SetConstantBuffer(name, value, offset, size) end
---@param nameID number
---@param value ComputeBuffer
---@param offset number
---@param size number
function Material:SetConstantBuffer(nameID, value, offset, size) end
---@param name string
---@param values List<number>
function Material:SetFloatArray(name, values) end
---@param nameID number
---@param values List<number>
function Material:SetFloatArray(nameID, values) end
---@param name string
---@param values number[]
function Material:SetFloatArray(name, values) end
---@param nameID number
---@param values number[]
function Material:SetFloatArray(nameID, values) end
---@param name string
---@param values List<Color>
function Material:SetColorArray(name, values) end
---@param nameID number
---@param values List<Color>
function Material:SetColorArray(nameID, values) end
---@param name string
---@param values Color[]
function Material:SetColorArray(name, values) end
---@param nameID number
---@param values Color[]
function Material:SetColorArray(nameID, values) end
---@param name string
---@param values List<Vector4>
function Material:SetVectorArray(name, values) end
---@param nameID number
---@param values List<Vector4>
function Material:SetVectorArray(nameID, values) end
---@param name string
---@param values Vector4[]
function Material:SetVectorArray(name, values) end
---@param nameID number
---@param values Vector4[]
function Material:SetVectorArray(nameID, values) end
---@param name string
---@param values List<Matrix4x4>
function Material:SetMatrixArray(name, values) end
---@param nameID number
---@param values List<Matrix4x4>
function Material:SetMatrixArray(nameID, values) end
---@param name string
---@param values Matrix4x4[]
function Material:SetMatrixArray(name, values) end
---@param nameID number
---@param values Matrix4x4[]
function Material:SetMatrixArray(nameID, values) end
---@param name string
---@return number
function Material:GetFloat(name) end
---@param nameID number
---@return number
function Material:GetFloat(nameID) end
---@param name string
---@return number
function Material:GetInt(name) end
---@param nameID number
---@return number
function Material:GetInt(nameID) end
---@param name string
---@return Color
function Material:GetColor(name) end
---@param nameID number
---@return Color
function Material:GetColor(nameID) end
---@param name string
---@return Vector4
function Material:GetVector(name) end
---@param nameID number
---@return Vector4
function Material:GetVector(nameID) end
---@param name string
---@return Matrix4x4
function Material:GetMatrix(name) end
---@param nameID number
---@return Matrix4x4
function Material:GetMatrix(nameID) end
---@param name string
---@return Texture
function Material:GetTexture(name) end
---@param nameID number
---@return Texture
function Material:GetTexture(nameID) end
---@param name string
---@return number[]
function Material:GetFloatArray(name) end
---@param nameID number
---@return number[]
function Material:GetFloatArray(nameID) end
---@param name string
---@return Color[]
function Material:GetColorArray(name) end
---@param nameID number
---@return Color[]
function Material:GetColorArray(nameID) end
---@param name string
---@return Vector4[]
function Material:GetVectorArray(name) end
---@param nameID number
---@return Vector4[]
function Material:GetVectorArray(nameID) end
---@param name string
---@return Matrix4x4[]
function Material:GetMatrixArray(name) end
---@param nameID number
---@return Matrix4x4[]
function Material:GetMatrixArray(nameID) end
---@param name string
---@param values List<number>
function Material:GetFloatArray(name, values) end
---@param nameID number
---@param values List<number>
function Material:GetFloatArray(nameID, values) end
---@param name string
---@param values List<Color>
function Material:GetColorArray(name, values) end
---@param nameID number
---@param values List<Color>
function Material:GetColorArray(nameID, values) end
---@param name string
---@param values List<Vector4>
function Material:GetVectorArray(name, values) end
---@param nameID number
---@param values List<Vector4>
function Material:GetVectorArray(nameID, values) end
---@param name string
---@param values List<Matrix4x4>
function Material:GetMatrixArray(name, values) end
---@param nameID number
---@param values List<Matrix4x4>
function Material:GetMatrixArray(nameID, values) end
---@param name string
---@param value Vector2
function Material:SetTextureOffset(name, value) end
---@param nameID number
---@param value Vector2
function Material:SetTextureOffset(nameID, value) end
---@param name string
---@param value Vector2
function Material:SetTextureScale(name, value) end
---@param nameID number
---@param value Vector2
function Material:SetTextureScale(nameID, value) end
---@param name string
---@return Vector2
function Material:GetTextureOffset(name) end
---@param nameID number
---@return Vector2
function Material:GetTextureOffset(nameID) end
---@param name string
---@return Vector2
function Material:GetTextureScale(name) end
---@param nameID number
---@return Vector2
function Material:GetTextureScale(nameID) end

---@class Light : Behaviour
---@field type number
---@field shape number
---@field spotAngle number
---@field innerSpotAngle number
---@field color Color
---@field colorTemperature number
---@field useColorTemperature boolean
---@field intensity number
---@field bounceIntensity number
---@field useBoundingSphereOverride boolean
---@field boundingSphereOverride Vector4
---@field shadowCustomResolution number
---@field shadowBias number
---@field shadowNormalBias number
---@field shadowNearPlane number
---@field useShadowMatrixOverride boolean
---@field shadowMatrixOverride Matrix4x4
---@field range number
---@field flare Flare
---@field bakingOutput LightBakingOutput
---@field cullingMask number
---@field renderingLayerMask number
---@field lightShadowCasterMode number
---@field shadows number
---@field shadowStrength number
---@field shadowResolution number
---@field layerShadowCullDistances number[]
---@field cookieSize number
---@field cookie Texture
---@field renderMode number
---@field commandBufferCount number
local Light = {}
function Light:Reset() end
---@param evt number
---@param buffer CommandBuffer
function Light:AddCommandBuffer(evt, buffer) end
---@param evt number
---@param buffer CommandBuffer
---@param shadowPassMask number
function Light:AddCommandBuffer(evt, buffer, shadowPassMask) end
---@param evt number
---@param buffer CommandBuffer
---@param queueType number
function Light:AddCommandBufferAsync(evt, buffer, queueType) end
---@param evt number
---@param buffer CommandBuffer
---@param shadowPassMask number
---@param queueType number
function Light:AddCommandBufferAsync(evt, buffer, shadowPassMask, queueType) end
---@param evt number
---@param buffer CommandBuffer
function Light:RemoveCommandBuffer(evt, buffer) end
---@param evt number
function Light:RemoveCommandBuffers(evt) end
function Light:RemoveAllCommandBuffers() end
---@param evt number
---@return CommandBuffer[]
function Light:GetCommandBuffers(evt) end
---@param type number
---@param layer number
---@return Light[]
function Light.GetLights(type, layer) end

---@class Rigidbody : Component
---@field velocity Vector3
---@field angularVelocity Vector3
---@field drag number
---@field angularDrag number
---@field mass number
---@field useGravity boolean
---@field maxDepenetrationVelocity number
---@field isKinematic boolean
---@field freezeRotation boolean
---@field constraints number
---@field collisionDetectionMode number
---@field centerOfMass Vector3
---@field worldCenterOfMass Vector3
---@field inertiaTensorRotation Quaternion
---@field inertiaTensor Vector3
---@field detectCollisions boolean
---@field position Vector3
---@field rotation Quaternion
---@field interpolation number
---@field solverIterations number
---@field sleepThreshold number
---@field maxAngularVelocity number
---@field solverVelocityIterations number
local Rigidbody = {}
---@param density number
function Rigidbody:SetDensity(density) end
---@param position Vector3
function Rigidbody:MovePosition(position) end
---@param rot Quaternion
function Rigidbody:MoveRotation(rot) end
function Rigidbody:Sleep() end
---@return boolean
function Rigidbody:IsSleeping() end
function Rigidbody:WakeUp() end
function Rigidbody:ResetCenterOfMass() end
function Rigidbody:ResetInertiaTensor() end
---@param relativePoint Vector3
---@return Vector3
function Rigidbody:GetRelativePointVelocity(relativePoint) end
---@param worldPoint Vector3
---@return Vector3
function Rigidbody:GetPointVelocity(worldPoint) end
---@param force Vector3
---@param mode number
function Rigidbody:AddForce(force, mode) end
---@param force Vector3
function Rigidbody:AddForce(force) end
---@param x number
---@param y number
---@param z number
---@param mode number
function Rigidbody:AddForce(x, y, z, mode) end
---@param x number
---@param y number
---@param z number
function Rigidbody:AddForce(x, y, z) end
---@param force Vector3
---@param mode number
function Rigidbody:AddRelativeForce(force, mode) end
---@param force Vector3
function Rigidbody:AddRelativeForce(force) end
---@param x number
---@param y number
---@param z number
---@param mode number
function Rigidbody:AddRelativeForce(x, y, z, mode) end
---@param x number
---@param y number
---@param z number
function Rigidbody:AddRelativeForce(x, y, z) end
---@param torque Vector3
---@param mode number
function Rigidbody:AddTorque(torque, mode) end
---@param torque Vector3
function Rigidbody:AddTorque(torque) end
---@param x number
---@param y number
---@param z number
---@param mode number
function Rigidbody:AddTorque(x, y, z, mode) end
---@param x number
---@param y number
---@param z number
function Rigidbody:AddTorque(x, y, z) end
---@param torque Vector3
---@param mode number
function Rigidbody:AddRelativeTorque(torque, mode) end
---@param torque Vector3
function Rigidbody:AddRelativeTorque(torque) end
---@param x number
---@param y number
---@param z number
---@param mode number
function Rigidbody:AddRelativeTorque(x, y, z, mode) end
---@param x number
---@param y number
---@param z number
function Rigidbody:AddRelativeTorque(x, y, z) end
---@param force Vector3
---@param position Vector3
---@param mode number
function Rigidbody:AddForceAtPosition(force, position, mode) end
---@param force Vector3
---@param position Vector3
function Rigidbody:AddForceAtPosition(force, position) end
---@param explosionForce number
---@param explosionPosition Vector3
---@param explosionRadius number
---@param upwardsModifier number
---@param mode number
function Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius, upwardsModifier, mode) end
---@param explosionForce number
---@param explosionPosition Vector3
---@param explosionRadius number
---@param upwardsModifier number
function Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius, upwardsModifier) end
---@param explosionForce number
---@param explosionPosition Vector3
---@param explosionRadius number
function Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius) end
---@param position Vector3
---@return Vector3
function Rigidbody:ClosestPointOnBounds(position) end
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param queryTriggerInteraction number
---@return boolean
function Rigidbody:SweepTest(direction, hitInfo, maxDistance, queryTriggerInteraction) end
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Rigidbody:SweepTest(direction, hitInfo, maxDistance) end
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Rigidbody:SweepTest(direction, hitInfo) end
---@param direction Vector3
---@param maxDistance number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Rigidbody:SweepTestAll(direction, maxDistance, queryTriggerInteraction) end
---@param direction Vector3
---@param maxDistance number
---@return RaycastHit[]
function Rigidbody:SweepTestAll(direction, maxDistance) end
---@param direction Vector3
---@return RaycastHit[]
function Rigidbody:SweepTestAll(direction) end

---@class Camera : Behaviour
---@field main Camera @[static]
---@field current Camera @[static]
---@field allCamerasCount number @[static]
---@field allCameras Camera[] @[static]
---@field onPreCull CameraCallback @[static]
---@field onPreRender CameraCallback @[static]
---@field onPostRender CameraCallback @[static]
---@field nearClipPlane number
---@field farClipPlane number
---@field fieldOfView number
---@field renderingPath number
---@field actualRenderingPath number
---@field allowHDR boolean
---@field allowMSAA boolean
---@field allowDynamicResolution boolean
---@field forceIntoRenderTexture boolean
---@field orthographicSize number
---@field orthographic boolean
---@field opaqueSortMode number
---@field transparencySortMode number
---@field transparencySortAxis Vector3
---@field depth number
---@field aspect number
---@field velocity Vector3
---@field cullingMask number
---@field eventMask number
---@field layerCullSpherical boolean
---@field cameraType number
---@field overrideSceneCullingMask number
---@field layerCullDistances number[]
---@field useOcclusionCulling boolean
---@field cullingMatrix Matrix4x4
---@field backgroundColor Color
---@field clearFlags number
---@field depthTextureMode number
---@field clearStencilAfterLightingPass boolean
---@field usePhysicalProperties boolean
---@field sensorSize Vector2
---@field lensShift Vector2
---@field focalLength number
---@field gateFit number
---@field rect Rect
---@field pixelRect Rect
---@field pixelWidth number
---@field pixelHeight number
---@field scaledPixelWidth number
---@field scaledPixelHeight number
---@field targetTexture RenderTexture
---@field activeTexture RenderTexture
---@field targetDisplay number
---@field cameraToWorldMatrix Matrix4x4
---@field worldToCameraMatrix Matrix4x4
---@field projectionMatrix Matrix4x4
---@field nonJitteredProjectionMatrix Matrix4x4
---@field useJitteredProjectionMatrixForTransparentRendering boolean
---@field previousViewProjectionMatrix Matrix4x4
---@field scene Scene
---@field stereoEnabled boolean
---@field stereoSeparation number
---@field stereoConvergence number
---@field areVRStereoViewMatricesWithinSingleCullTolerance boolean
---@field stereoTargetEye number
---@field stereoActiveEye number
---@field commandBufferCount number
local Camera = {}
function Camera:Reset() end
function Camera:ResetTransparencySortSettings() end
function Camera:ResetAspect() end
function Camera:ResetCullingMatrix() end
---@param shader Shader
---@param replacementTag string
function Camera:SetReplacementShader(shader, replacementTag) end
function Camera:ResetReplacementShader() end
---@return number
function Camera:GetGateFittedFieldOfView() end
---@return Vector2
function Camera:GetGateFittedLensShift() end
---@param colorBuffer RenderBuffer
---@param depthBuffer RenderBuffer
function Camera:SetTargetBuffers(colorBuffer, depthBuffer) end
---@param colorBuffer RenderBuffer[]
---@param depthBuffer RenderBuffer
function Camera:SetTargetBuffers(colorBuffer, depthBuffer) end
function Camera:ResetWorldToCameraMatrix() end
function Camera:ResetProjectionMatrix() end
---@param clipPlane Vector4
---@return Matrix4x4
function Camera:CalculateObliqueMatrix(clipPlane) end
---@param position Vector3
---@param eye number
---@return Vector3
function Camera:WorldToScreenPoint(position, eye) end
---@param position Vector3
---@param eye number
---@return Vector3
function Camera:WorldToViewportPoint(position, eye) end
---@param position Vector3
---@param eye number
---@return Vector3
function Camera:ViewportToWorldPoint(position, eye) end
---@param position Vector3
---@param eye number
---@return Vector3
function Camera:ScreenToWorldPoint(position, eye) end
---@param position Vector3
---@return Vector3
function Camera:WorldToScreenPoint(position) end
---@param position Vector3
---@return Vector3
function Camera:WorldToViewportPoint(position) end
---@param position Vector3
---@return Vector3
function Camera:ViewportToWorldPoint(position) end
---@param position Vector3
---@return Vector3
function Camera:ScreenToWorldPoint(position) end
---@param position Vector3
---@return Vector3
function Camera:ScreenToViewportPoint(position) end
---@param position Vector3
---@return Vector3
function Camera:ViewportToScreenPoint(position) end
---@param pos Vector3
---@param eye number
---@return Ray
function Camera:ViewportPointToRay(pos, eye) end
---@param pos Vector3
---@return Ray
function Camera:ViewportPointToRay(pos) end
---@param pos Vector3
---@param eye number
---@return Ray
function Camera:ScreenPointToRay(pos, eye) end
---@param pos Vector3
---@return Ray
function Camera:ScreenPointToRay(pos) end
---@param viewport Rect
---@param z number
---@param eye number
---@param outCorners Vector3[]
function Camera:CalculateFrustumCorners(viewport, z, eye, outCorners) end
---@param eye number
---@return Matrix4x4
function Camera:GetStereoNonJitteredProjectionMatrix(eye) end
---@param eye number
---@return Matrix4x4
function Camera:GetStereoViewMatrix(eye) end
---@param eye number
function Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye) end
---@param eye number
---@return Matrix4x4
function Camera:GetStereoProjectionMatrix(eye) end
---@param eye number
---@param matrix Matrix4x4
function Camera:SetStereoProjectionMatrix(eye, matrix) end
function Camera:ResetStereoProjectionMatrices() end
---@param eye number
---@param matrix Matrix4x4
function Camera:SetStereoViewMatrix(eye, matrix) end
function Camera:ResetStereoViewMatrices() end
---@param cubemap Cubemap
---@param faceMask number
---@return boolean
function Camera:RenderToCubemap(cubemap, faceMask) end
---@param cubemap Cubemap
---@return boolean
function Camera:RenderToCubemap(cubemap) end
---@param cubemap RenderTexture
---@param faceMask number
---@return boolean
function Camera:RenderToCubemap(cubemap, faceMask) end
---@param cubemap RenderTexture
---@return boolean
function Camera:RenderToCubemap(cubemap) end
---@param cubemap RenderTexture
---@param faceMask number
---@param stereoEye number
---@return boolean
function Camera:RenderToCubemap(cubemap, faceMask, stereoEye) end
function Camera:Render() end
---@param shader Shader
---@param replacementTag string
function Camera:RenderWithShader(shader, replacementTag) end
function Camera:RenderDontRestore() end
---@param other Camera
function Camera:CopyFrom(other) end
---@param evt number
function Camera:RemoveCommandBuffers(evt) end
function Camera:RemoveAllCommandBuffers() end
---@param evt number
---@param buffer CommandBuffer
function Camera:AddCommandBuffer(evt, buffer) end
---@param evt number
---@param buffer CommandBuffer
---@param queueType number
function Camera:AddCommandBufferAsync(evt, buffer, queueType) end
---@param evt number
---@param buffer CommandBuffer
function Camera:RemoveCommandBuffer(evt, buffer) end
---@param evt number
---@return CommandBuffer[]
function Camera:GetCommandBuffers(evt) end
---@param cullingParameters ScriptableCullingParameters&
---@return boolean
function Camera:TryGetCullingParameters(cullingParameters) end
---@param stereoAware boolean
---@param cullingParameters ScriptableCullingParameters&
---@return boolean
function Camera:TryGetCullingParameters(stereoAware, cullingParameters) end
---@param output Matrix4x4&
---@param focalLength number
---@param sensorSize Vector2
---@param lensShift Vector2
---@param nearClip number
---@param farClip number
---@param gateFitParameters GateFitParameters
function Camera.CalculateProjectionMatrixFromPhysicalProperties(output, focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters) end
---@param focalLength number
---@param sensorSize number
---@return number
function Camera.FocalLengthToFieldOfView(focalLength, sensorSize) end
---@param fieldOfView number
---@param sensorSize number
---@return number
function Camera.FieldOfViewToFocalLength(fieldOfView, sensorSize) end
---@param horizontalFieldOfView number
---@param aspectRatio number
---@return number
function Camera.HorizontalToVerticalFieldOfView(horizontalFieldOfView, aspectRatio) end
---@param verticalFieldOfView number
---@param aspectRatio number
---@return number
function Camera.VerticalToHorizontalFieldOfView(verticalFieldOfView, aspectRatio) end
---@param cameras Camera[]
---@return number
function Camera.GetAllCameras(cameras) end
---@param cur Camera
function Camera.SetupCurrent(cur) end

---@class AudioSource : AudioBehaviour
---@field volume number
---@field pitch number
---@field time number
---@field timeSamples number
---@field clip AudioClip
---@field outputAudioMixerGroup AudioMixerGroup
---@field isPlaying boolean
---@field isVirtual boolean
---@field loop boolean
---@field ignoreListenerVolume boolean
---@field playOnAwake boolean
---@field ignoreListenerPause boolean
---@field velocityUpdateMode number
---@field panStereo number
---@field spatialBlend number
---@field spatialize boolean
---@field spatializePostEffects boolean
---@field reverbZoneMix number
---@field bypassEffects boolean
---@field bypassListenerEffects boolean
---@field bypassReverbZones boolean
---@field dopplerLevel number
---@field spread number
---@field priority number
---@field mute boolean
---@field minDistance number
---@field maxDistance number
---@field rolloffMode number
local AudioSource = {}
function AudioSource:Play() end
---@param delay number
function AudioSource:Play(delay) end
---@param delay number
function AudioSource:PlayDelayed(delay) end
---@param time number
function AudioSource:PlayScheduled(time) end
---@param clip AudioClip
function AudioSource:PlayOneShot(clip) end
---@param clip AudioClip
---@param volumeScale number
function AudioSource:PlayOneShot(clip, volumeScale) end
---@param time number
function AudioSource:SetScheduledStartTime(time) end
---@param time number
function AudioSource:SetScheduledEndTime(time) end
function AudioSource:Stop() end
function AudioSource:Pause() end
function AudioSource:UnPause() end
---@param type number
---@param curve AnimationCurve
function AudioSource:SetCustomCurve(type, curve) end
---@param type number
---@return AnimationCurve
function AudioSource:GetCustomCurve(type) end
---@param samples number[]
---@param channel number
function AudioSource:GetOutputData(samples, channel) end
---@param samples number[]
---@param channel number
---@param window number
function AudioSource:GetSpectrumData(samples, channel, window) end
---@param index number
---@param value number
---@return boolean
function AudioSource:SetSpatializerFloat(index, value) end
---@param index number
---@param value Single&
---@return boolean
function AudioSource:GetSpatializerFloat(index, value) end
---@param index number
---@param value Single&
---@return boolean
function AudioSource:GetAmbisonicDecoderFloat(index, value) end
---@param index number
---@param value number
---@return boolean
function AudioSource:SetAmbisonicDecoderFloat(index, value) end
---@param clip AudioClip
---@param position Vector3
function AudioSource.PlayClipAtPoint(clip, position) end
---@param clip AudioClip
---@param position Vector3
---@param volume number
function AudioSource.PlayClipAtPoint(clip, position, volume) end

---@class Behaviour : Component
---@field enabled boolean
---@field isActiveAndEnabled boolean
local Behaviour = {}

---@class MonoBehaviour : Behaviour
---@field useGUILayout boolean
local MonoBehaviour = {}
---@return boolean
function MonoBehaviour:IsInvoking() end
function MonoBehaviour:CancelInvoke() end
---@param methodName string
---@param time number
function MonoBehaviour:Invoke(methodName, time) end
---@param methodName string
---@param time number
---@param repeatRate number
function MonoBehaviour:InvokeRepeating(methodName, time, repeatRate) end
---@param methodName string
function MonoBehaviour:CancelInvoke(methodName) end
---@param methodName string
---@return boolean
function MonoBehaviour:IsInvoking(methodName) end
---@param methodName string
---@return Coroutine
function MonoBehaviour:StartCoroutine(methodName) end
---@param methodName string
---@param value Object
---@return Coroutine
function MonoBehaviour:StartCoroutine(methodName, value) end
---@param routine IEnumerator
---@return Coroutine
function MonoBehaviour:StartCoroutine(routine) end
---@param routine IEnumerator
function MonoBehaviour:StopCoroutine(routine) end
---@param routine Coroutine
function MonoBehaviour:StopCoroutine(routine) end
---@param methodName string
function MonoBehaviour:StopCoroutine(methodName) end
function MonoBehaviour:StopAllCoroutines() end
---@param message Object
function MonoBehaviour.print(message) end

---@class GameObject : Object
---@field transform Transform
---@field layer number
---@field activeSelf boolean
---@field activeInHierarchy boolean
---@field isStatic boolean
---@field tag string
---@field scene Scene
---@field sceneCullingMask number
---@field gameObject GameObject
local GameObject = {}
---@return T
function GameObject:GetComponent() end
---@param type Type
---@return Component
function GameObject:GetComponent(type) end
---@param type string
---@return Component
function GameObject:GetComponent(type) end
---@param type Type
---@param includeInactive boolean
---@return Component
function GameObject:GetComponentInChildren(type, includeInactive) end
---@param type Type
---@return Component
function GameObject:GetComponentInChildren(type) end
---@return T
function GameObject:GetComponentInChildren() end
---@param includeInactive boolean
---@return T
function GameObject:GetComponentInChildren(includeInactive) end
---@param type Type
---@return Component
function GameObject:GetComponentInParent(type) end
---@return T
function GameObject:GetComponentInParent() end
---@param type Type
---@return Component[]
function GameObject:GetComponents(type) end
---@return T[]
function GameObject:GetComponents() end
---@param type Type
---@param results List<Component>
function GameObject:GetComponents(type, results) end
---@param results List<T>
function GameObject:GetComponents(results) end
---@param type Type
---@return Component[]
function GameObject:GetComponentsInChildren(type) end
---@param type Type
---@param includeInactive boolean
---@return Component[]
function GameObject:GetComponentsInChildren(type, includeInactive) end
---@param includeInactive boolean
---@return T[]
function GameObject:GetComponentsInChildren(includeInactive) end
---@param includeInactive boolean
---@param results List<T>
function GameObject:GetComponentsInChildren(includeInactive, results) end
---@return T[]
function GameObject:GetComponentsInChildren() end
---@param results List<T>
function GameObject:GetComponentsInChildren(results) end
---@param type Type
---@return Component[]
function GameObject:GetComponentsInParent(type) end
---@param type Type
---@param includeInactive boolean
---@return Component[]
function GameObject:GetComponentsInParent(type, includeInactive) end
---@param includeInactive boolean
---@param results List<T>
function GameObject:GetComponentsInParent(includeInactive, results) end
---@param includeInactive boolean
---@return T[]
function GameObject:GetComponentsInParent(includeInactive) end
---@return T[]
function GameObject:GetComponentsInParent() end
---@param component T&
---@return boolean
function GameObject:TryGetComponent(component) end
---@param type Type
---@param component Component&
---@return boolean
function GameObject:TryGetComponent(type, component) end
---@param methodName string
---@param options number
function GameObject:SendMessageUpwards(methodName, options) end
---@param methodName string
---@param options number
function GameObject:SendMessage(methodName, options) end
---@param methodName string
---@param options number
function GameObject:BroadcastMessage(methodName, options) end
---@param componentType Type
---@return Component
function GameObject:AddComponent(componentType) end
---@return T
function GameObject:AddComponent() end
---@param value boolean
function GameObject:SetActive(value) end
---@param tag string
---@return boolean
function GameObject:CompareTag(tag) end
---@param methodName string
---@param value Object
---@param options number
function GameObject:SendMessageUpwards(methodName, value, options) end
---@param methodName string
---@param value Object
function GameObject:SendMessageUpwards(methodName, value) end
---@param methodName string
function GameObject:SendMessageUpwards(methodName) end
---@param methodName string
---@param value Object
---@param options number
function GameObject:SendMessage(methodName, value, options) end
---@param methodName string
---@param value Object
function GameObject:SendMessage(methodName, value) end
---@param methodName string
function GameObject:SendMessage(methodName) end
---@param methodName string
---@param parameter Object
---@param options number
function GameObject:BroadcastMessage(methodName, parameter, options) end
---@param methodName string
---@param parameter Object
function GameObject:BroadcastMessage(methodName, parameter) end
---@param methodName string
function GameObject:BroadcastMessage(methodName) end
---@param type number
---@return GameObject
function GameObject.CreatePrimitive(type) end
---@param tag string
---@return GameObject
function GameObject.FindWithTag(tag) end
---@param tag string
---@return GameObject
function GameObject.FindGameObjectWithTag(tag) end
---@param tag string
---@return GameObject[]
function GameObject.FindGameObjectsWithTag(tag) end
---@param name string
---@return GameObject
function GameObject.Find(name) end

---@class TrackedReference
local TrackedReference = {}
---@param o Object
---@return boolean
function TrackedReference:Equals(o) end
---@return number
function TrackedReference:GetHashCode() end

---@class Application
---@field isPlaying boolean @[static]
---@field isFocused boolean @[static]
---@field buildGUID string @[static]
---@field runInBackground boolean @[static]
---@field isBatchMode boolean @[static]
---@field dataPath string @[static]
---@field streamingAssetsPath string @[static]
---@field persistentDataPath string @[static]
---@field temporaryCachePath string @[static]
---@field absoluteURL string @[static]
---@field unityVersion string @[static]
---@field version string @[static]
---@field installerName string @[static]
---@field identifier string @[static]
---@field installMode number @[static]
---@field sandboxType number @[static]
---@field productName string @[static]
---@field companyName string @[static]
---@field cloudProjectId string @[static]
---@field targetFrameRate number @[static]
---@field consoleLogPath string @[static]
---@field backgroundLoadingPriority number @[static]
---@field genuine boolean @[static]
---@field genuineCheckAvailable boolean @[static]
---@field platform number @[static]
---@field isMobilePlatform boolean @[static]
---@field isConsolePlatform boolean @[static]
---@field systemLanguage number @[static]
---@field internetReachability number @[static]
---@field isEditor boolean @[static]
local Application = {}
---@param exitCode number
function Application.Quit(exitCode) end
function Application.Quit() end
function Application.Unload() end
---@param levelIndex number
---@return boolean
function Application.CanStreamedLevelBeLoaded(levelIndex) end
---@param levelName string
---@return boolean
function Application.CanStreamedLevelBeLoaded(levelName) end
---@param obj Object
---@return boolean
function Application.IsPlaying(obj) end
---@return string[]
function Application.GetBuildTags() end
---@param buildTags string[]
function Application.SetBuildTags(buildTags) end
---@return boolean
function Application.HasProLicense() end
---@param delegateMethod AdvertisingIdentifierCallback
---@return boolean
function Application.RequestAdvertisingIdentifierAsync(delegateMethod) end
---@param url string
function Application.OpenURL(url) end
---@param logType number
---@return number
function Application.GetStackTraceLogType(logType) end
---@param logType number
---@param stackTraceType number
function Application.SetStackTraceLogType(logType, stackTraceType) end
---@param mode number
---@return AsyncOperation
function Application.RequestUserAuthorization(mode) end
---@param mode number
---@return boolean
function Application.HasUserAuthorization(mode) end
---@param value LowMemoryCallback
function Application.add_lowMemory(value) end
---@param value LowMemoryCallback
function Application.remove_lowMemory(value) end
---@param value LogCallback
function Application.add_logMessageReceived(value) end
---@param value LogCallback
function Application.remove_logMessageReceived(value) end
---@param value LogCallback
function Application.add_logMessageReceivedThreaded(value) end
---@param value LogCallback
function Application.remove_logMessageReceivedThreaded(value) end
---@param value UnityAction
function Application.add_onBeforeRender(value) end
---@param value UnityAction
function Application.remove_onBeforeRender(value) end
---@param value Action<boolean>
function Application.add_focusChanged(value) end
---@param value Action<boolean>
function Application.remove_focusChanged(value) end
---@param value Action<string>
function Application.add_deepLinkActivated(value) end
---@param value Action<string>
function Application.remove_deepLinkActivated(value) end
---@param value Func<boolean>
function Application.add_wantsToQuit(value) end
---@param value Func<boolean>
function Application.remove_wantsToQuit(value) end
---@param value Action
function Application.add_quitting(value) end
---@param value Action
function Application.remove_quitting(value) end

---@class Physics
---@field gravity Vector3 @[static]
---@field defaultContactOffset number @[static]
---@field sleepThreshold number @[static]
---@field queriesHitTriggers boolean @[static]
---@field queriesHitBackfaces boolean @[static]
---@field bounceThreshold number @[static]
---@field defaultSolverIterations number @[static]
---@field defaultSolverVelocityIterations number @[static]
---@field defaultMaxAngularSpeed number @[static]
---@field defaultPhysicsScene PhysicsScene @[static]
---@field autoSimulation boolean @[static]
---@field autoSyncTransforms boolean @[static]
---@field reuseCollisionCallbacks boolean @[static]
---@field interCollisionDistance number @[static]
---@field interCollisionStiffness number @[static]
---@field interCollisionSettingsToggle boolean @[static]
---@field clothGravity Vector3 @[static]
---@field IgnoreRaycastLayer number @[static]
---@field DefaultRaycastLayers number @[static]
---@field AllLayers number @[static]
local Physics = {}
---@param collider1 Collider
---@param collider2 Collider
---@param ignore boolean
function Physics.IgnoreCollision(collider1, collider2, ignore) end
---@param collider1 Collider
---@param collider2 Collider
function Physics.IgnoreCollision(collider1, collider2) end
---@param layer1 number
---@param layer2 number
---@param ignore boolean
function Physics.IgnoreLayerCollision(layer1, layer2, ignore) end
---@param layer1 number
---@param layer2 number
function Physics.IgnoreLayerCollision(layer1, layer2) end
---@param layer1 number
---@param layer2 number
---@return boolean
function Physics.GetIgnoreLayerCollision(layer1, layer2) end
---@param collider1 Collider
---@param collider2 Collider
---@return boolean
function Physics.GetIgnoreCollision(collider1, collider2) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.Raycast(origin, direction, maxDistance, layerMask) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@return boolean
function Physics.Raycast(origin, direction, maxDistance) end
---@param origin Vector3
---@param direction Vector3
---@return boolean
function Physics.Raycast(origin, direction) end
---@param origin Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Raycast(origin, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.Raycast(origin, direction, hitInfo, maxDistance, layerMask) end
---@param origin Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Physics.Raycast(origin, direction, hitInfo, maxDistance) end
---@param origin Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Physics.Raycast(origin, direction, hitInfo) end
---@param ray Ray
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Raycast(ray, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.Raycast(ray, maxDistance, layerMask) end
---@param ray Ray
---@param maxDistance number
---@return boolean
function Physics.Raycast(ray, maxDistance) end
---@param ray Ray
---@return boolean
function Physics.Raycast(ray) end
---@param ray Ray
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Raycast(ray, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.Raycast(ray, hitInfo, maxDistance, layerMask) end
---@param ray Ray
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Physics.Raycast(ray, hitInfo, maxDistance) end
---@param ray Ray
---@param hitInfo RaycastHit&
---@return boolean
function Physics.Raycast(ray, hitInfo) end
---@param start Vector3
---@param endd Vector3
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Linecast(start, endd, layerMask, queryTriggerInteraction) end
---@param start Vector3
---@param endd Vector3
---@param layerMask number
---@return boolean
function Physics.Linecast(start, endd, layerMask) end
---@param start Vector3
---@param endd Vector3
---@return boolean
function Physics.Linecast(start, endd) end
---@param start Vector3
---@param endd Vector3
---@param hitInfo RaycastHit&
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.Linecast(start, endd, hitInfo, layerMask, queryTriggerInteraction) end
---@param start Vector3
---@param endd Vector3
---@param hitInfo RaycastHit&
---@param layerMask number
---@return boolean
function Physics.Linecast(start, endd, hitInfo, layerMask) end
---@param start Vector3
---@param endd Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Physics.Linecast(start, endd, hitInfo) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, maxDistance, layerMask) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, maxDistance) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Physics.CapsuleCast(point1, point2, radius, direction, hitInfo) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Physics.SphereCast(origin, radius, direction, hitInfo) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.SphereCast(ray, radius, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.SphereCast(ray, radius, maxDistance, layerMask) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@return boolean
function Physics.SphereCast(ray, radius, maxDistance) end
---@param ray Ray
---@param radius number
---@return boolean
function Physics.SphereCast(ray, radius) end
---@param ray Ray
---@param radius number
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.SphereCast(ray, radius, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param radius number
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.SphereCast(ray, radius, hitInfo, maxDistance, layerMask) end
---@param ray Ray
---@param radius number
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Physics.SphereCast(ray, radius, hitInfo, maxDistance) end
---@param ray Ray
---@param radius number
---@param hitInfo RaycastHit&
---@return boolean
function Physics.SphereCast(ray, radius, hitInfo) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@return boolean
function Physics.BoxCast(center, halfExtents, direction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param orientation Quaternion
---@param maxDistance number
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param orientation Quaternion
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, hitInfo, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function Physics.BoxCast(center, halfExtents, direction, hitInfo) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.RaycastAll(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.RaycastAll(origin, direction, maxDistance, layerMask) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@return RaycastHit[]
function Physics.RaycastAll(origin, direction, maxDistance) end
---@param origin Vector3
---@param direction Vector3
---@return RaycastHit[]
function Physics.RaycastAll(origin, direction) end
---@param ray Ray
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.RaycastAll(ray, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.RaycastAll(ray, maxDistance, layerMask) end
---@param ray Ray
---@param maxDistance number
---@return RaycastHit[]
function Physics.RaycastAll(ray, maxDistance) end
---@param ray Ray
---@return RaycastHit[]
function Physics.RaycastAll(ray) end
---@param ray Ray
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.RaycastNonAlloc(ray, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.RaycastNonAlloc(ray, results, maxDistance, layerMask) end
---@param ray Ray
---@param results RaycastHit[]
---@param maxDistance number
---@return number
function Physics.RaycastNonAlloc(ray, results, maxDistance) end
---@param ray Ray
---@param results RaycastHit[]
---@return number
function Physics.RaycastNonAlloc(ray, results) end
---@param origin Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.RaycastNonAlloc(origin, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.RaycastNonAlloc(origin, direction, results, maxDistance, layerMask) end
---@param origin Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@return number
function Physics.RaycastNonAlloc(origin, direction, results, maxDistance) end
---@param origin Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@return number
function Physics.RaycastNonAlloc(origin, direction, results) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance, layerMask) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@return RaycastHit[]
function Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@return RaycastHit[]
function Physics.CapsuleCastAll(point1, point2, radius, direction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.SphereCastAll(origin, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.SphereCastAll(origin, radius, direction, maxDistance, layerMask) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@return RaycastHit[]
function Physics.SphereCastAll(origin, radius, direction, maxDistance) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@return RaycastHit[]
function Physics.SphereCastAll(origin, radius, direction) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.SphereCastAll(ray, radius, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.SphereCastAll(ray, radius, maxDistance, layerMask) end
---@param ray Ray
---@param radius number
---@param maxDistance number
---@return RaycastHit[]
function Physics.SphereCastAll(ray, radius, maxDistance) end
---@param ray Ray
---@param radius number
---@return RaycastHit[]
function Physics.SphereCastAll(ray, radius) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param layerMask number
---@param queryTriggerInteraction number
---@return Collider[]
function Physics.OverlapCapsule(point0, point1, radius, layerMask, queryTriggerInteraction) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param layerMask number
---@return Collider[]
function Physics.OverlapCapsule(point0, point1, radius, layerMask) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@return Collider[]
function Physics.OverlapCapsule(point0, point1, radius) end
---@param position Vector3
---@param radius number
---@param layerMask number
---@param queryTriggerInteraction number
---@return Collider[]
function Physics.OverlapSphere(position, radius, layerMask, queryTriggerInteraction) end
---@param position Vector3
---@param radius number
---@param layerMask number
---@return Collider[]
function Physics.OverlapSphere(position, radius, layerMask) end
---@param position Vector3
---@param radius number
---@return Collider[]
function Physics.OverlapSphere(position, radius) end
---@param step number
function Physics.Simulate(step) end
function Physics.SyncTransforms() end
---@param colliderA Collider
---@param positionA Vector3
---@param rotationA Quaternion
---@param colliderB Collider
---@param positionB Vector3
---@param rotationB Quaternion
---@param direction Vector3&
---@param distance Single&
---@return boolean
function Physics.ComputePenetration(colliderA, positionA, rotationA, colliderB, positionB, rotationB, direction, distance) end
---@param point Vector3
---@param collider Collider
---@param position Vector3
---@param rotation Quaternion
---@return Vector3
function Physics.ClosestPoint(point, collider, position, rotation) end
---@param position Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.OverlapSphereNonAlloc(position, radius, results, layerMask, queryTriggerInteraction) end
---@param position Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@return number
function Physics.OverlapSphereNonAlloc(position, radius, results, layerMask) end
---@param position Vector3
---@param radius number
---@param results Collider[]
---@return number
function Physics.OverlapSphereNonAlloc(position, radius, results) end
---@param position Vector3
---@param radius number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.CheckSphere(position, radius, layerMask, queryTriggerInteraction) end
---@param position Vector3
---@param radius number
---@param layerMask number
---@return boolean
function Physics.CheckSphere(position, radius, layerMask) end
---@param position Vector3
---@param radius number
---@return boolean
function Physics.CheckSphere(position, radius) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance, layerMask) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@return number
function Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@return number
function Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance, layerMask) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@return number
function Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@return number
function Physics.SphereCastNonAlloc(origin, radius, direction, results) end
---@param ray Ray
---@param radius number
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.SphereCastNonAlloc(ray, radius, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param ray Ray
---@param radius number
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.SphereCastNonAlloc(ray, radius, results, maxDistance, layerMask) end
---@param ray Ray
---@param radius number
---@param results RaycastHit[]
---@param maxDistance number
---@return number
function Physics.SphereCastNonAlloc(ray, radius, results, maxDistance) end
---@param ray Ray
---@param radius number
---@param results RaycastHit[]
---@return number
function Physics.SphereCastNonAlloc(ray, radius, results) end
---@param start Vector3
---@param endd Vector3
---@param radius number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.CheckCapsule(start, endd, radius, layerMask, queryTriggerInteraction) end
---@param start Vector3
---@param endd Vector3
---@param radius number
---@param layerMask number
---@return boolean
function Physics.CheckCapsule(start, endd, radius, layerMask) end
---@param start Vector3
---@param endd Vector3
---@param radius number
---@return boolean
function Physics.CheckCapsule(start, endd, radius) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@param layermask number
---@param queryTriggerInteraction number
---@return boolean
function Physics.CheckBox(center, halfExtents, orientation, layermask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@param layerMask number
---@return boolean
function Physics.CheckBox(center, halfExtents, orientation, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@return boolean
function Physics.CheckBox(center, halfExtents, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@return boolean
function Physics.CheckBox(center, halfExtents) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@param layerMask number
---@param queryTriggerInteraction number
---@return Collider[]
function Physics.OverlapBox(center, halfExtents, orientation, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@param layerMask number
---@return Collider[]
function Physics.OverlapBox(center, halfExtents, orientation, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param orientation Quaternion
---@return Collider[]
function Physics.OverlapBox(center, halfExtents, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@return Collider[]
function Physics.OverlapBox(center, halfExtents) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@param orientation Quaternion
---@param mask number
---@param queryTriggerInteraction number
---@return number
function Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation, mask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@param orientation Quaternion
---@param mask number
---@return number
function Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation, mask) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@param orientation Quaternion
---@return number
function Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@return number
function Physics.OverlapBoxNonAlloc(center, halfExtents, results) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param orientation Quaternion
---@return number
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param orientation Quaternion
---@param maxDistance number
---@return number
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@return number
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@return number
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@return RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance, layerMask) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@param maxDistance number
---@return RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param orientation Quaternion
---@return RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction, orientation) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@return RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results, layerMask, queryTriggerInteraction) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@return number
function Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results, layerMask) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param results Collider[]
---@return number
function Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results) end
---@param worldBounds Bounds
---@param subdivisions number
function Physics.RebuildBroadphaseRegions(worldBounds, subdivisions) end
---@param meshID number
---@param convex boolean
function Physics.BakeMesh(meshID, convex) end

---@class Collider : Component
---@field enabled boolean
---@field attachedRigidbody Rigidbody
---@field isTrigger boolean
---@field contactOffset number
---@field bounds Bounds
---@field sharedMaterial PhysicMaterial
---@field material PhysicMaterial
local Collider = {}
---@param position Vector3
---@return Vector3
function Collider:ClosestPoint(position) end
---@param ray Ray
---@param hitInfo RaycastHit&
---@param maxDistance number
---@return boolean
function Collider:Raycast(ray, hitInfo, maxDistance) end
---@param position Vector3
---@return Vector3
function Collider:ClosestPointOnBounds(position) end

---@class Time
---@field time number @[static]
---@field timeSinceLevelLoad number @[static]
---@field deltaTime number @[static]
---@field fixedTime number @[static]
---@field unscaledTime number @[static]
---@field fixedUnscaledTime number @[static]
---@field unscaledDeltaTime number @[static]
---@field fixedUnscaledDeltaTime number @[static]
---@field fixedDeltaTime number @[static]
---@field maximumDeltaTime number @[static]
---@field smoothDeltaTime number @[static]
---@field maximumParticleDeltaTime number @[static]
---@field timeScale number @[static]
---@field frameCount number @[static]
---@field renderedFrameCount number @[static]
---@field realtimeSinceStartup number @[static]
---@field captureDeltaTime number @[static]
---@field captureFramerate number @[static]
---@field inFixedTimeStep boolean @[static]
local Time = {}

---@class Texture : Object
---@field masterTextureLimit number @[static]
---@field anisotropicFiltering number @[static]
---@field totalTextureMemory number @[static]
---@field desiredTextureMemory number @[static]
---@field targetTextureMemory number @[static]
---@field currentTextureMemory number @[static]
---@field nonStreamingTextureMemory number @[static]
---@field streamingMipmapUploadCount number @[static]
---@field streamingRendererCount number @[static]
---@field streamingTextureCount number @[static]
---@field nonStreamingTextureCount number @[static]
---@field streamingTexturePendingLoadCount number @[static]
---@field streamingTextureLoadingCount number @[static]
---@field streamingTextureForceLoadAll boolean @[static]
---@field streamingTextureDiscardUnusedMips boolean @[static]
---@field allowThreadedTextureCreation boolean @[static]
---@field GenerateAllMips number @[static]
---@field mipmapCount number
---@field graphicsFormat number
---@field width number
---@field height number
---@field dimension number
---@field isReadable boolean
---@field wrapMode number
---@field wrapModeU number
---@field wrapModeV number
---@field wrapModeW number
---@field filterMode number
---@field anisoLevel number
---@field mipMapBias number
---@field texelSize Vector2
---@field updateCount number
local Texture = {}
---@return IntPtr
function Texture:GetNativeTexturePtr() end
function Texture:IncrementUpdateCount() end
---@param forcedMin number
---@param globalMax number
function Texture.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax) end
function Texture.SetStreamingTextureMaterialDebugProperties() end

---@class Texture2D : Texture
---@field whiteTexture Texture2D @[static]
---@field blackTexture Texture2D @[static]
---@field redTexture Texture2D @[static]
---@field grayTexture Texture2D @[static]
---@field linearGrayTexture Texture2D @[static]
---@field normalTexture Texture2D @[static]
---@field format number
---@field isReadable boolean
---@field streamingMipmaps boolean
---@field streamingMipmapsPriority number
---@field requestedMipmapLevel number
---@field minimumMipmapLevel number
---@field calculatedMipmapLevel number
---@field desiredMipmapLevel number
---@field loadingMipmapLevel number
---@field loadedMipmapLevel number
local Texture2D = {}
---@param highQuality boolean
function Texture2D:Compress(highQuality) end
function Texture2D:ClearRequestedMipmapLevel() end
---@return boolean
function Texture2D:IsRequestedMipmapLevelLoaded() end
function Texture2D:ClearMinimumMipmapLevel() end
---@param nativeTex IntPtr
function Texture2D:UpdateExternalTexture(nativeTex) end
---@return number[]
function Texture2D:GetRawTextureData() end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param miplevel number
---@return Color[]
function Texture2D:GetPixels(x, y, blockWidth, blockHeight, miplevel) end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@return Color[]
function Texture2D:GetPixels(x, y, blockWidth, blockHeight) end
---@param miplevel number
---@return Color32[]
function Texture2D:GetPixels32(miplevel) end
---@return Color32[]
function Texture2D:GetPixels32() end
---@param textures Texture2D[]
---@param padding number
---@param maximumAtlasSize number
---@param makeNoLongerReadable boolean
---@return Rect[]
function Texture2D:PackTextures(textures, padding, maximumAtlasSize, makeNoLongerReadable) end
---@param textures Texture2D[]
---@param padding number
---@param maximumAtlasSize number
---@return Rect[]
function Texture2D:PackTextures(textures, padding, maximumAtlasSize) end
---@param textures Texture2D[]
---@param padding number
---@return Rect[]
function Texture2D:PackTextures(textures, padding) end
---@param x number
---@param y number
---@param color Color
function Texture2D:SetPixel(x, y, color) end
---@param x number
---@param y number
---@param color Color
---@param mipLevel number
function Texture2D:SetPixel(x, y, color, mipLevel) end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors Color[]
---@param miplevel number
function Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors, miplevel) end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors Color[]
function Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors) end
---@param colors Color[]
---@param miplevel number
function Texture2D:SetPixels(colors, miplevel) end
---@param colors Color[]
function Texture2D:SetPixels(colors) end
---@param x number
---@param y number
---@return Color
function Texture2D:GetPixel(x, y) end
---@param x number
---@param y number
---@param mipLevel number
---@return Color
function Texture2D:GetPixel(x, y, mipLevel) end
---@param u number
---@param v number
---@return Color
function Texture2D:GetPixelBilinear(u, v) end
---@param u number
---@param v number
---@param mipLevel number
---@return Color
function Texture2D:GetPixelBilinear(u, v, mipLevel) end
---@param data IntPtr
---@param size number
function Texture2D:LoadRawTextureData(data, size) end
---@param data number[]
function Texture2D:LoadRawTextureData(data) end
---@param data NativeArray<T>
function Texture2D:LoadRawTextureData(data) end
---@param data T[]
---@param mipLevel number
---@param sourceDataStartIndex number
function Texture2D:SetPixelData(data, mipLevel, sourceDataStartIndex) end
---@param data NativeArray<T>
---@param mipLevel number
---@param sourceDataStartIndex number
function Texture2D:SetPixelData(data, mipLevel, sourceDataStartIndex) end
---@return NativeArray<T>
function Texture2D:GetRawTextureData() end
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function Texture2D:Apply(updateMipmaps, makeNoLongerReadable) end
---@param updateMipmaps boolean
function Texture2D:Apply(updateMipmaps) end
function Texture2D:Apply() end
---@param width number
---@param height number
---@return boolean
function Texture2D:Resize(width, height) end
---@param width number
---@param height number
---@param format number
---@param hasMipMap boolean
---@return boolean
function Texture2D:Resize(width, height, format, hasMipMap) end
---@param source Rect
---@param destX number
---@param destY number
---@param recalculateMipMaps boolean
function Texture2D:ReadPixels(source, destX, destY, recalculateMipMaps) end
---@param source Rect
---@param destX number
---@param destY number
function Texture2D:ReadPixels(source, destX, destY) end
---@param colors Color32[]
---@param miplevel number
function Texture2D:SetPixels32(colors, miplevel) end
---@param colors Color32[]
function Texture2D:SetPixels32(colors) end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors Color32[]
---@param miplevel number
function Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors, miplevel) end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors Color32[]
function Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors) end
---@param miplevel number
---@return Color[]
function Texture2D:GetPixels(miplevel) end
---@return Color[]
function Texture2D:GetPixels() end
---@param width number
---@param height number
---@param format number
---@param mipChain boolean
---@param linear boolean
---@param nativeTex IntPtr
---@return Texture2D
function Texture2D.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex) end
---@param sizes Vector2[]
---@param padding number
---@param atlasSize number
---@param results List<Rect>
---@return boolean
function Texture2D.GenerateAtlas(sizes, padding, atlasSize, results) end

---@class Shader : Object
---@field globalMaximumLOD number @[static]
---@field globalRenderPipeline string @[static]
---@field maximumLOD number
---@field isSupported boolean
---@field renderQueue number
---@field passCount number
local Shader = {}
---@param name string
---@return Shader
function Shader:GetDependency(name) end
---@param passIndex number
---@param tagName ShaderTagId
---@return ShaderTagId
function Shader:FindPassTagValue(passIndex, tagName) end
---@return number
function Shader:GetPropertyCount() end
---@param propertyName string
---@return number
function Shader:FindPropertyIndex(propertyName) end
---@param propertyIndex number
---@return string
function Shader:GetPropertyName(propertyIndex) end
---@param propertyIndex number
---@return number
function Shader:GetPropertyNameId(propertyIndex) end
---@param propertyIndex number
---@return number
function Shader:GetPropertyType(propertyIndex) end
---@param propertyIndex number
---@return string
function Shader:GetPropertyDescription(propertyIndex) end
---@param propertyIndex number
---@return number
function Shader:GetPropertyFlags(propertyIndex) end
---@param propertyIndex number
---@return string[]
function Shader:GetPropertyAttributes(propertyIndex) end
---@param propertyIndex number
---@return number
function Shader:GetPropertyDefaultFloatValue(propertyIndex) end
---@param propertyIndex number
---@return Vector4
function Shader:GetPropertyDefaultVectorValue(propertyIndex) end
---@param propertyIndex number
---@return Vector2
function Shader:GetPropertyRangeLimits(propertyIndex) end
---@param propertyIndex number
---@return number
function Shader:GetPropertyTextureDimension(propertyIndex) end
---@param propertyIndex number
---@return string
function Shader:GetPropertyTextureDefaultName(propertyIndex) end
---@param name string
---@return Shader
function Shader.Find(name) end
---@param keyword string
function Shader.EnableKeyword(keyword) end
---@param keyword string
function Shader.DisableKeyword(keyword) end
---@param keyword string
---@return boolean
function Shader.IsKeywordEnabled(keyword) end
function Shader.WarmupAllShaders() end
---@param name string
---@return number
function Shader.PropertyToID(name) end
---@param name string
---@param value number
function Shader.SetGlobalFloat(name, value) end
---@param nameID number
---@param value number
function Shader.SetGlobalFloat(nameID, value) end
---@param name string
---@param value number
function Shader.SetGlobalInt(name, value) end
---@param nameID number
---@param value number
function Shader.SetGlobalInt(nameID, value) end
---@param name string
---@param value Vector4
function Shader.SetGlobalVector(name, value) end
---@param nameID number
---@param value Vector4
function Shader.SetGlobalVector(nameID, value) end
---@param name string
---@param value Color
function Shader.SetGlobalColor(name, value) end
---@param nameID number
---@param value Color
function Shader.SetGlobalColor(nameID, value) end
---@param name string
---@param value Matrix4x4
function Shader.SetGlobalMatrix(name, value) end
---@param nameID number
---@param value Matrix4x4
function Shader.SetGlobalMatrix(nameID, value) end
---@param name string
---@param value Texture
function Shader.SetGlobalTexture(name, value) end
---@param nameID number
---@param value Texture
function Shader.SetGlobalTexture(nameID, value) end
---@param name string
---@param value RenderTexture
---@param element number
function Shader.SetGlobalTexture(name, value, element) end
---@param nameID number
---@param value RenderTexture
---@param element number
function Shader.SetGlobalTexture(nameID, value, element) end
---@param name string
---@param value ComputeBuffer
function Shader.SetGlobalBuffer(name, value) end
---@param nameID number
---@param value ComputeBuffer
function Shader.SetGlobalBuffer(nameID, value) end
---@param nameID number
---@param value ComputeBuffer
---@param offset number
---@param size number
function Shader.SetGlobalConstantBuffer(nameID, value, offset, size) end
---@param name string
---@param values List<number>
function Shader.SetGlobalFloatArray(name, values) end
---@param nameID number
---@param values List<number>
function Shader.SetGlobalFloatArray(nameID, values) end
---@param name string
---@param values number[]
function Shader.SetGlobalFloatArray(name, values) end
---@param nameID number
---@param values number[]
function Shader.SetGlobalFloatArray(nameID, values) end
---@param name string
---@param values List<Vector4>
function Shader.SetGlobalVectorArray(name, values) end
---@param nameID number
---@param values List<Vector4>
function Shader.SetGlobalVectorArray(nameID, values) end
---@param name string
---@param values Vector4[]
function Shader.SetGlobalVectorArray(name, values) end
---@param nameID number
---@param values Vector4[]
function Shader.SetGlobalVectorArray(nameID, values) end
---@param name string
---@param values List<Matrix4x4>
function Shader.SetGlobalMatrixArray(name, values) end
---@param nameID number
---@param values List<Matrix4x4>
function Shader.SetGlobalMatrixArray(nameID, values) end
---@param name string
---@param values Matrix4x4[]
function Shader.SetGlobalMatrixArray(name, values) end
---@param nameID number
---@param values Matrix4x4[]
function Shader.SetGlobalMatrixArray(nameID, values) end
---@param name string
---@return number
function Shader.GetGlobalFloat(name) end
---@param nameID number
---@return number
function Shader.GetGlobalFloat(nameID) end
---@param name string
---@return number
function Shader.GetGlobalInt(name) end
---@param nameID number
---@return number
function Shader.GetGlobalInt(nameID) end
---@param name string
---@return Vector4
function Shader.GetGlobalVector(name) end
---@param nameID number
---@return Vector4
function Shader.GetGlobalVector(nameID) end
---@param name string
---@return Color
function Shader.GetGlobalColor(name) end
---@param nameID number
---@return Color
function Shader.GetGlobalColor(nameID) end
---@param name string
---@return Matrix4x4
function Shader.GetGlobalMatrix(name) end
---@param nameID number
---@return Matrix4x4
function Shader.GetGlobalMatrix(nameID) end
---@param name string
---@return Texture
function Shader.GetGlobalTexture(name) end
---@param nameID number
---@return Texture
function Shader.GetGlobalTexture(nameID) end
---@param name string
---@return number[]
function Shader.GetGlobalFloatArray(name) end
---@param nameID number
---@return number[]
function Shader.GetGlobalFloatArray(nameID) end
---@param name string
---@return Vector4[]
function Shader.GetGlobalVectorArray(name) end
---@param nameID number
---@return Vector4[]
function Shader.GetGlobalVectorArray(nameID) end
---@param name string
---@return Matrix4x4[]
function Shader.GetGlobalMatrixArray(name) end
---@param nameID number
---@return Matrix4x4[]
function Shader.GetGlobalMatrixArray(nameID) end
---@param name string
---@param values List<number>
function Shader.GetGlobalFloatArray(name, values) end
---@param nameID number
---@param values List<number>
function Shader.GetGlobalFloatArray(nameID, values) end
---@param name string
---@param values List<Vector4>
function Shader.GetGlobalVectorArray(name, values) end
---@param nameID number
---@param values List<Vector4>
function Shader.GetGlobalVectorArray(nameID, values) end
---@param name string
---@param values List<Matrix4x4>
function Shader.GetGlobalMatrixArray(name, values) end
---@param nameID number
---@param values List<Matrix4x4>
function Shader.GetGlobalMatrixArray(nameID, values) end

---@class Renderer : Component
---@field bounds Bounds
---@field enabled boolean
---@field isVisible boolean
---@field shadowCastingMode number
---@field receiveShadows boolean
---@field forceRenderingOff boolean
---@field motionVectorGenerationMode number
---@field lightProbeUsage number
---@field reflectionProbeUsage number
---@field renderingLayerMask number
---@field rendererPriority number
---@field rayTracingMode number
---@field sortingLayerName string
---@field sortingLayerID number
---@field sortingOrder number
---@field allowOcclusionWhenDynamic boolean
---@field isPartOfStaticBatch boolean
---@field worldToLocalMatrix Matrix4x4
---@field localToWorldMatrix Matrix4x4
---@field lightProbeProxyVolumeOverride GameObject
---@field probeAnchor Transform
---@field lightmapIndex number
---@field realtimeLightmapIndex number
---@field lightmapScaleOffset Vector4
---@field realtimeLightmapScaleOffset Vector4
---@field materials Material[]
---@field material Material
---@field sharedMaterial Material
---@field sharedMaterials Material[]
local Renderer = {}
---@return boolean
function Renderer:HasPropertyBlock() end
---@param properties MaterialPropertyBlock
function Renderer:SetPropertyBlock(properties) end
---@param properties MaterialPropertyBlock
---@param materialIndex number
function Renderer:SetPropertyBlock(properties, materialIndex) end
---@param properties MaterialPropertyBlock
function Renderer:GetPropertyBlock(properties) end
---@param properties MaterialPropertyBlock
---@param materialIndex number
function Renderer:GetPropertyBlock(properties, materialIndex) end
---@param m List<Material>
function Renderer:GetMaterials(m) end
---@param m List<Material>
function Renderer:GetSharedMaterials(m) end
---@param result List<ReflectionProbeBlendInfo>
function Renderer:GetClosestReflectionProbes(result) end

---@class WWW
---@field assetBundle AssetBundle
---@field bytes number[]
---@field bytesDownloaded number
---@field error string
---@field isDone boolean
---@field progress number
---@field responseHeaders Dictionary<string,string>
---@field text string
---@field texture Texture2D
---@field textureNonReadable Texture2D
---@field threadPriority number
---@field uploadProgress number
---@field url string
---@field keepWaiting boolean
local WWW = {}
---@param texture Texture2D
function WWW:LoadImageIntoTexture(texture) end
function WWW:Dispose() end
---@return AudioClip
function WWW:GetAudioClip() end
---@param threeD boolean
---@return AudioClip
function WWW:GetAudioClip(threeD) end
---@param threeD boolean
---@param stream boolean
---@return AudioClip
function WWW:GetAudioClip(threeD, stream) end
---@param threeD boolean
---@param stream boolean
---@param audioType number
---@return AudioClip
function WWW:GetAudioClip(threeD, stream, audioType) end
---@return AudioClip
function WWW:GetAudioClipCompressed() end
---@param threeD boolean
---@return AudioClip
function WWW:GetAudioClipCompressed(threeD) end
---@param threeD boolean
---@param audioType number
---@return AudioClip
function WWW:GetAudioClipCompressed(threeD, audioType) end
---@param s string
---@return string
function WWW.EscapeURL(s) end
---@param s string
---@param e Encoding
---@return string
function WWW.EscapeURL(s, e) end
---@param s string
---@return string
function WWW.UnEscapeURL(s) end
---@param s string
---@param e Encoding
---@return string
function WWW.UnEscapeURL(s, e) end
---@param url string
---@param version number
---@return WWW
function WWW.LoadFromCacheOrDownload(url, version) end
---@param url string
---@param version number
---@param crc number
---@return WWW
function WWW.LoadFromCacheOrDownload(url, version, crc) end
---@param url string
---@param hash Hash128
---@return WWW
function WWW.LoadFromCacheOrDownload(url, hash) end
---@param url string
---@param hash Hash128
---@param crc number
---@return WWW
function WWW.LoadFromCacheOrDownload(url, hash, crc) end
---@param url string
---@param cachedBundle CachedAssetBundle
---@param crc number
---@return WWW
function WWW.LoadFromCacheOrDownload(url, cachedBundle, crc) end

---@class Screen
---@field width number @[static]
---@field height number @[static]
---@field dpi number @[static]
---@field currentResolution Resolution @[static]
---@field resolutions Resolution[] @[static]
---@field fullScreen boolean @[static]
---@field fullScreenMode number @[static]
---@field safeArea Rect @[static]
---@field cutouts Rect[] @[static]
---@field autorotateToPortrait boolean @[static]
---@field autorotateToPortraitUpsideDown boolean @[static]
---@field autorotateToLandscapeLeft boolean @[static]
---@field autorotateToLandscapeRight boolean @[static]
---@field orientation number @[static]
---@field sleepTimeout number @[static]
---@field brightness number @[static]
local Screen = {}
---@param width number
---@param height number
---@param fullscreenMode number
---@param preferredRefreshRate number
function Screen.SetResolution(width, height, fullscreenMode, preferredRefreshRate) end
---@param width number
---@param height number
---@param fullscreenMode number
function Screen.SetResolution(width, height, fullscreenMode) end
---@param width number
---@param height number
---@param fullscreen boolean
---@param preferredRefreshRate number
function Screen.SetResolution(width, height, fullscreen, preferredRefreshRate) end
---@param width number
---@param height number
---@param fullscreen boolean
function Screen.SetResolution(width, height, fullscreen) end

---@class CameraClearFlags : Enum
---@field Skybox number @[static]
---@field Color number @[static]
---@field SolidColor number @[static]
---@field Depth number @[static]
---@field Nothing number @[static]
---@field value__ number
local CameraClearFlags = {}

---@class AudioClip : Object
---@field length number
---@field samples number
---@field channels number
---@field frequency number
---@field loadType number
---@field preloadAudioData boolean
---@field ambisonic boolean
---@field loadInBackground boolean
---@field loadState number
local AudioClip = {}
---@return boolean
function AudioClip:LoadAudioData() end
---@return boolean
function AudioClip:UnloadAudioData() end
---@param data number[]
---@param offsetSamples number
---@return boolean
function AudioClip:GetData(data, offsetSamples) end
---@param data number[]
---@param offsetSamples number
---@return boolean
function AudioClip:SetData(data, offsetSamples) end
---@param name string
---@param lengthSamples number
---@param channels number
---@param frequency number
---@param stream boolean
---@return AudioClip
function AudioClip.Create(name, lengthSamples, channels, frequency, stream) end
---@param name string
---@param lengthSamples number
---@param channels number
---@param frequency number
---@param stream boolean
---@param pcmreadercallback PCMReaderCallback
---@return AudioClip
function AudioClip.Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback) end
---@param name string
---@param lengthSamples number
---@param channels number
---@param frequency number
---@param stream boolean
---@param pcmreadercallback PCMReaderCallback
---@param pcmsetpositioncallback PCMSetPositionCallback
---@return AudioClip
function AudioClip.Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback, pcmsetpositioncallback) end

---@class AssetBundle : Object
---@field isStreamedSceneAssetBundle boolean
local AssetBundle = {}
---@param name string
---@return boolean
function AssetBundle:Contains(name) end
---@param name string
---@return Object
function AssetBundle:LoadAsset(name) end
---@param name string
---@return T
function AssetBundle:LoadAsset(name) end
---@param name string
---@param type Type
---@return Object
function AssetBundle:LoadAsset(name, type) end
---@param name string
---@return AssetBundleRequest
function AssetBundle:LoadAssetAsync(name) end
---@param name string
---@return AssetBundleRequest
function AssetBundle:LoadAssetAsync(name) end
---@param name string
---@param type Type
---@return AssetBundleRequest
function AssetBundle:LoadAssetAsync(name, type) end
---@param name string
---@return Object[]
function AssetBundle:LoadAssetWithSubAssets(name) end
---@param name string
---@return T[]
function AssetBundle:LoadAssetWithSubAssets(name) end
---@param name string
---@param type Type
---@return Object[]
function AssetBundle:LoadAssetWithSubAssets(name, type) end
---@param name string
---@return AssetBundleRequest
function AssetBundle:LoadAssetWithSubAssetsAsync(name) end
---@param name string
---@return AssetBundleRequest
function AssetBundle:LoadAssetWithSubAssetsAsync(name) end
---@param name string
---@param type Type
---@return AssetBundleRequest
function AssetBundle:LoadAssetWithSubAssetsAsync(name, type) end
---@return Object[]
function AssetBundle:LoadAllAssets() end
---@return T[]
function AssetBundle:LoadAllAssets() end
---@param type Type
---@return Object[]
function AssetBundle:LoadAllAssets(type) end
---@return AssetBundleRequest
function AssetBundle:LoadAllAssetsAsync() end
---@return AssetBundleRequest
function AssetBundle:LoadAllAssetsAsync() end
---@param type Type
---@return AssetBundleRequest
function AssetBundle:LoadAllAssetsAsync(type) end
---@param unloadAllLoadedObjects boolean
function AssetBundle:Unload(unloadAllLoadedObjects) end
---@return string[]
function AssetBundle:GetAllAssetNames() end
---@return string[]
function AssetBundle:GetAllScenePaths() end
---@param unloadAllObjects boolean
function AssetBundle.UnloadAllAssetBundles(unloadAllObjects) end
---@return IEnumerable<AssetBundle>
function AssetBundle.GetAllLoadedAssetBundles() end
---@param path string
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromFileAsync(path) end
---@param path string
---@param crc number
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromFileAsync(path, crc) end
---@param path string
---@param crc number
---@param offset number
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromFileAsync(path, crc, offset) end
---@param path string
---@return AssetBundle
function AssetBundle.LoadFromFile(path) end
---@param path string
---@param crc number
---@return AssetBundle
function AssetBundle.LoadFromFile(path, crc) end
---@param path string
---@param crc number
---@param offset number
---@return AssetBundle
function AssetBundle.LoadFromFile(path, crc, offset) end
---@param binary number[]
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromMemoryAsync(binary) end
---@param binary number[]
---@param crc number
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromMemoryAsync(binary, crc) end
---@param binary number[]
---@return AssetBundle
function AssetBundle.LoadFromMemory(binary) end
---@param binary number[]
---@param crc number
---@return AssetBundle
function AssetBundle.LoadFromMemory(binary, crc) end
---@param stream Stream
---@param crc number
---@param managedReadBufferSize number
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromStreamAsync(stream, crc, managedReadBufferSize) end
---@param stream Stream
---@param crc number
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromStreamAsync(stream, crc) end
---@param stream Stream
---@return AssetBundleCreateRequest
function AssetBundle.LoadFromStreamAsync(stream) end
---@param stream Stream
---@param crc number
---@param managedReadBufferSize number
---@return AssetBundle
function AssetBundle.LoadFromStream(stream, crc, managedReadBufferSize) end
---@param stream Stream
---@param crc number
---@return AssetBundle
function AssetBundle.LoadFromStream(stream, crc) end
---@param stream Stream
---@return AssetBundle
function AssetBundle.LoadFromStream(stream) end
---@param inputPath string
---@param outputPath string
---@param method BuildCompression
---@param expectedCRC number
---@param priority number
---@return AssetBundleRecompressOperation
function AssetBundle.RecompressAssetBundleAsync(inputPath, outputPath, method, expectedCRC, priority) end

---@class ParticleSystem : Component
---@field isPlaying boolean
---@field isEmitting boolean
---@field isStopped boolean
---@field isPaused boolean
---@field particleCount number
---@field time number
---@field randomSeed number
---@field useAutoRandomSeed boolean
---@field proceduralSimulationSupported boolean
---@field main MainModule
---@field emission EmissionModule
---@field shape ShapeModule
---@field velocityOverLifetime VelocityOverLifetimeModule
---@field limitVelocityOverLifetime LimitVelocityOverLifetimeModule
---@field inheritVelocity InheritVelocityModule
---@field forceOverLifetime ForceOverLifetimeModule
---@field colorOverLifetime ColorOverLifetimeModule
---@field colorBySpeed ColorBySpeedModule
---@field sizeOverLifetime SizeOverLifetimeModule
---@field sizeBySpeed SizeBySpeedModule
---@field rotationOverLifetime RotationOverLifetimeModule
---@field rotationBySpeed RotationBySpeedModule
---@field externalForces ExternalForcesModule
---@field noise NoiseModule
---@field collision CollisionModule
---@field trigger TriggerModule
---@field textureSheetAnimation TextureSheetAnimationModule
---@field lights LightsModule
---@field trails TrailModule
---@field customData CustomDataModule
local ParticleSystem = {}
---@param particles Particle[]
---@param size number
---@param offset number
function ParticleSystem:SetParticles(particles, size, offset) end
---@param particles Particle[]
---@param size number
function ParticleSystem:SetParticles(particles, size) end
---@param particles Particle[]
function ParticleSystem:SetParticles(particles) end
---@param particles NativeArray<Particle>
---@param size number
---@param offset number
function ParticleSystem:SetParticles(particles, size, offset) end
---@param particles NativeArray<Particle>
---@param size number
function ParticleSystem:SetParticles(particles, size) end
---@param particles NativeArray<Particle>
function ParticleSystem:SetParticles(particles) end
---@param particles Particle[]
---@param size number
---@param offset number
---@return number
function ParticleSystem:GetParticles(particles, size, offset) end
---@param particles Particle[]
---@param size number
---@return number
function ParticleSystem:GetParticles(particles, size) end
---@param particles Particle[]
---@return number
function ParticleSystem:GetParticles(particles) end
---@param particles NativeArray<Particle>
---@param size number
---@param offset number
---@return number
function ParticleSystem:GetParticles(particles, size, offset) end
---@param particles NativeArray<Particle>
---@param size number
---@return number
function ParticleSystem:GetParticles(particles, size) end
---@param particles NativeArray<Particle>
---@return number
function ParticleSystem:GetParticles(particles) end
---@param customData List<Vector4>
---@param streamIndex number
function ParticleSystem:SetCustomParticleData(customData, streamIndex) end
---@param customData List<Vector4>
---@param streamIndex number
---@return number
function ParticleSystem:GetCustomParticleData(customData, streamIndex) end
---@return PlaybackState
function ParticleSystem:GetPlaybackState() end
---@param playbackState PlaybackState
function ParticleSystem:SetPlaybackState(playbackState) end
---@return Trails
function ParticleSystem:GetTrails() end
---@param trailData Trails
function ParticleSystem:SetTrails(trailData) end
---@param t number
---@param withChildren boolean
---@param restart boolean
---@param fixedTimeStep boolean
function ParticleSystem:Simulate(t, withChildren, restart, fixedTimeStep) end
---@param t number
---@param withChildren boolean
---@param restart boolean
function ParticleSystem:Simulate(t, withChildren, restart) end
---@param t number
---@param withChildren boolean
function ParticleSystem:Simulate(t, withChildren) end
---@param t number
function ParticleSystem:Simulate(t) end
---@param withChildren boolean
function ParticleSystem:Play(withChildren) end
function ParticleSystem:Play() end
---@param withChildren boolean
function ParticleSystem:Pause(withChildren) end
function ParticleSystem:Pause() end
---@param withChildren boolean
---@param stopBehavior number
function ParticleSystem:Stop(withChildren, stopBehavior) end
---@param withChildren boolean
function ParticleSystem:Stop(withChildren) end
function ParticleSystem:Stop() end
---@param withChildren boolean
function ParticleSystem:Clear(withChildren) end
function ParticleSystem:Clear() end
---@param withChildren boolean
---@return boolean
function ParticleSystem:IsAlive(withChildren) end
---@return boolean
function ParticleSystem:IsAlive() end
---@param count number
function ParticleSystem:Emit(count) end
---@param emitParams EmitParams
---@param count number
function ParticleSystem:Emit(emitParams, count) end
---@param subEmitterIndex number
function ParticleSystem:TriggerSubEmitter(subEmitterIndex) end
---@param subEmitterIndex number
---@param particle Particle&
function ParticleSystem:TriggerSubEmitter(subEmitterIndex, particle) end
---@param subEmitterIndex number
---@param particles List<Particle>
function ParticleSystem:TriggerSubEmitter(subEmitterIndex, particles) end
function ParticleSystem.ResetPreMappedBufferMemory() end

---@class AsyncOperation : YieldInstruction
---@field isDone boolean
---@field progress number
---@field priority number
---@field allowSceneActivation boolean
local AsyncOperation = {}
---@param value Action<AsyncOperation>
function AsyncOperation:add_completed(value) end
---@param value Action<AsyncOperation>
function AsyncOperation:remove_completed(value) end

---@class LightType : Enum
---@field Spot number @[static]
---@field Directional number @[static]
---@field Point number @[static]
---@field Area number @[static]
---@field Rectangle number @[static]
---@field Disc number @[static]
---@field value__ number
local LightType = {}

---@class SleepTimeout
---@field NeverSleep number @[static]
---@field SystemSetting number @[static]
local SleepTimeout = {}

---@class Animator : Behaviour
---@field isOptimizable boolean
---@field isHuman boolean
---@field hasRootMotion boolean
---@field humanScale number
---@field isInitialized boolean
---@field deltaPosition Vector3
---@field deltaRotation Quaternion
---@field velocity Vector3
---@field angularVelocity Vector3
---@field rootPosition Vector3
---@field rootRotation Quaternion
---@field applyRootMotion boolean
---@field updateMode number
---@field hasTransformHierarchy boolean
---@field gravityWeight number
---@field bodyPosition Vector3
---@field bodyRotation Quaternion
---@field stabilizeFeet boolean
---@field layerCount number
---@field parameters AnimatorControllerParameter[]
---@field parameterCount number
---@field feetPivotActive number
---@field pivotWeight number
---@field pivotPosition Vector3
---@field isMatchingTarget boolean
---@field speed number
---@field targetPosition Vector3
---@field targetRotation Quaternion
---@field cullingMode number
---@field playbackTime number
---@field recorderStartTime number
---@field recorderStopTime number
---@field recorderMode number
---@field runtimeAnimatorController RuntimeAnimatorController
---@field hasBoundPlayables boolean
---@field avatar Avatar
---@field playableGraph PlayableGraph
---@field layersAffectMassCenter boolean
---@field leftFeetBottomHeight number
---@field rightFeetBottomHeight number
---@field logWarnings boolean
---@field fireEvents boolean
---@field keepAnimatorControllerStateOnDisable boolean
local Animator = {}
---@param name string
---@return number
function Animator:GetFloat(name) end
---@param id number
---@return number
function Animator:GetFloat(id) end
---@param name string
---@param value number
function Animator:SetFloat(name, value) end
---@param name string
---@param value number
---@param dampTime number
---@param deltaTime number
function Animator:SetFloat(name, value, dampTime, deltaTime) end
---@param id number
---@param value number
function Animator:SetFloat(id, value) end
---@param id number
---@param value number
---@param dampTime number
---@param deltaTime number
function Animator:SetFloat(id, value, dampTime, deltaTime) end
---@param name string
---@return boolean
function Animator:GetBool(name) end
---@param id number
---@return boolean
function Animator:GetBool(id) end
---@param name string
---@param value boolean
function Animator:SetBool(name, value) end
---@param id number
---@param value boolean
function Animator:SetBool(id, value) end
---@param name string
---@return number
function Animator:GetInteger(name) end
---@param id number
---@return number
function Animator:GetInteger(id) end
---@param name string
---@param value number
function Animator:SetInteger(name, value) end
---@param id number
---@param value number
function Animator:SetInteger(id, value) end
---@param name string
function Animator:SetTrigger(name) end
---@param id number
function Animator:SetTrigger(id) end
---@param name string
function Animator:ResetTrigger(name) end
---@param id number
function Animator:ResetTrigger(id) end
---@param name string
---@return boolean
function Animator:IsParameterControlledByCurve(name) end
---@param id number
---@return boolean
function Animator:IsParameterControlledByCurve(id) end
---@param goal number
---@return Vector3
function Animator:GetIKPosition(goal) end
---@param goal number
---@param goalPosition Vector3
function Animator:SetIKPosition(goal, goalPosition) end
---@param goal number
---@return Quaternion
function Animator:GetIKRotation(goal) end
---@param goal number
---@param goalRotation Quaternion
function Animator:SetIKRotation(goal, goalRotation) end
---@param goal number
---@return number
function Animator:GetIKPositionWeight(goal) end
---@param goal number
---@param value number
function Animator:SetIKPositionWeight(goal, value) end
---@param goal number
---@return number
function Animator:GetIKRotationWeight(goal) end
---@param goal number
---@param value number
function Animator:SetIKRotationWeight(goal, value) end
---@param hint number
---@return Vector3
function Animator:GetIKHintPosition(hint) end
---@param hint number
---@param hintPosition Vector3
function Animator:SetIKHintPosition(hint, hintPosition) end
---@param hint number
---@return number
function Animator:GetIKHintPositionWeight(hint) end
---@param hint number
---@param value number
function Animator:SetIKHintPositionWeight(hint, value) end
---@param lookAtPosition Vector3
function Animator:SetLookAtPosition(lookAtPosition) end
---@param weight number
function Animator:SetLookAtWeight(weight) end
---@param weight number
---@param bodyWeight number
function Animator:SetLookAtWeight(weight, bodyWeight) end
---@param weight number
---@param bodyWeight number
---@param headWeight number
function Animator:SetLookAtWeight(weight, bodyWeight, headWeight) end
---@param weight number
---@param bodyWeight number
---@param headWeight number
---@param eyesWeight number
function Animator:SetLookAtWeight(weight, bodyWeight, headWeight, eyesWeight) end
---@param weight number
---@param bodyWeight number
---@param headWeight number
---@param eyesWeight number
---@param clampWeight number
function Animator:SetLookAtWeight(weight, bodyWeight, headWeight, eyesWeight, clampWeight) end
---@param humanBoneId number
---@param rotation Quaternion
function Animator:SetBoneLocalRotation(humanBoneId, rotation) end
---@return T
function Animator:GetBehaviour() end
---@return T[]
function Animator:GetBehaviours() end
---@param fullPathHash number
---@param layerIndex number
---@return StateMachineBehaviour[]
function Animator:GetBehaviours(fullPathHash, layerIndex) end
---@param layerIndex number
---@return string
function Animator:GetLayerName(layerIndex) end
---@param layerName string
---@return number
function Animator:GetLayerIndex(layerName) end
---@param layerIndex number
---@return number
function Animator:GetLayerWeight(layerIndex) end
---@param layerIndex number
---@param weight number
function Animator:SetLayerWeight(layerIndex, weight) end
---@param layerIndex number
---@return AnimatorStateInfo
function Animator:GetCurrentAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return AnimatorStateInfo
function Animator:GetNextAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return AnimatorTransitionInfo
function Animator:GetAnimatorTransitionInfo(layerIndex) end
---@param layerIndex number
---@return number
function Animator:GetCurrentAnimatorClipInfoCount(layerIndex) end
---@param layerIndex number
---@return number
function Animator:GetNextAnimatorClipInfoCount(layerIndex) end
---@param layerIndex number
---@return AnimatorClipInfo[]
function Animator:GetCurrentAnimatorClipInfo(layerIndex) end
---@param layerIndex number
---@return AnimatorClipInfo[]
function Animator:GetNextAnimatorClipInfo(layerIndex) end
---@param layerIndex number
---@param clips List<AnimatorClipInfo>
function Animator:GetCurrentAnimatorClipInfo(layerIndex, clips) end
---@param layerIndex number
---@param clips List<AnimatorClipInfo>
function Animator:GetNextAnimatorClipInfo(layerIndex, clips) end
---@param layerIndex number
---@return boolean
function Animator:IsInTransition(layerIndex) end
---@param index number
---@return AnimatorControllerParameter
function Animator:GetParameter(index) end
---@param matchPosition Vector3
---@param matchRotation Quaternion
---@param targetBodyPart number
---@param weightMask MatchTargetWeightMask
---@param startNormalizedTime number
function Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime) end
---@param matchPosition Vector3
---@param matchRotation Quaternion
---@param targetBodyPart number
---@param weightMask MatchTargetWeightMask
---@param startNormalizedTime number
---@param targetNormalizedTime number
function Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime, targetNormalizedTime) end
---@param matchPosition Vector3
---@param matchRotation Quaternion
---@param targetBodyPart number
---@param weightMask MatchTargetWeightMask
---@param startNormalizedTime number
---@param targetNormalizedTime number
---@param completeMatch boolean
function Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime, targetNormalizedTime, completeMatch) end
function Animator:InterruptMatchTarget() end
---@param completeMatch boolean
function Animator:InterruptMatchTarget(completeMatch) end
---@param stateName string
---@param fixedTransitionDuration number
function Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration) end
---@param stateName string
---@param fixedTransitionDuration number
---@param layer number
function Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer) end
---@param stateName string
---@param fixedTransitionDuration number
---@param layer number
---@param fixedTimeOffset number
function Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer, fixedTimeOffset) end
---@param stateName string
---@param fixedTransitionDuration number
---@param layer number
---@param fixedTimeOffset number
---@param normalizedTransitionTime number
function Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer, fixedTimeOffset, normalizedTransitionTime) end
---@param stateHashName number
---@param fixedTransitionDuration number
---@param layer number
---@param fixedTimeOffset number
function Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer, fixedTimeOffset) end
---@param stateHashName number
---@param fixedTransitionDuration number
---@param layer number
function Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer) end
---@param stateHashName number
---@param fixedTransitionDuration number
function Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration) end
---@param stateHashName number
---@param fixedTransitionDuration number
---@param layer number
---@param fixedTimeOffset number
---@param normalizedTransitionTime number
function Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer, fixedTimeOffset, normalizedTransitionTime) end
function Animator:WriteDefaultValues() end
---@param stateName string
---@param normalizedTransitionDuration number
---@param layer number
---@param normalizedTimeOffset number
function Animator:CrossFade(stateName, normalizedTransitionDuration, layer, normalizedTimeOffset) end
---@param stateName string
---@param normalizedTransitionDuration number
---@param layer number
function Animator:CrossFade(stateName, normalizedTransitionDuration, layer) end
---@param stateName string
---@param normalizedTransitionDuration number
function Animator:CrossFade(stateName, normalizedTransitionDuration) end
---@param stateName string
---@param normalizedTransitionDuration number
---@param layer number
---@param normalizedTimeOffset number
---@param normalizedTransitionTime number
function Animator:CrossFade(stateName, normalizedTransitionDuration, layer, normalizedTimeOffset, normalizedTransitionTime) end
---@param stateHashName number
---@param normalizedTransitionDuration number
---@param layer number
---@param normalizedTimeOffset number
---@param normalizedTransitionTime number
function Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer, normalizedTimeOffset, normalizedTransitionTime) end
---@param stateHashName number
---@param normalizedTransitionDuration number
---@param layer number
---@param normalizedTimeOffset number
function Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer, normalizedTimeOffset) end
---@param stateHashName number
---@param normalizedTransitionDuration number
---@param layer number
function Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer) end
---@param stateHashName number
---@param normalizedTransitionDuration number
function Animator:CrossFade(stateHashName, normalizedTransitionDuration) end
---@param stateName string
---@param layer number
function Animator:PlayInFixedTime(stateName, layer) end
---@param stateName string
function Animator:PlayInFixedTime(stateName) end
---@param stateName string
---@param layer number
---@param fixedTime number
function Animator:PlayInFixedTime(stateName, layer, fixedTime) end
---@param stateNameHash number
---@param layer number
---@param fixedTime number
function Animator:PlayInFixedTime(stateNameHash, layer, fixedTime) end
---@param stateNameHash number
---@param layer number
function Animator:PlayInFixedTime(stateNameHash, layer) end
---@param stateNameHash number
function Animator:PlayInFixedTime(stateNameHash) end
---@param stateName string
---@param layer number
function Animator:Play(stateName, layer) end
---@param stateName string
function Animator:Play(stateName) end
---@param stateName string
---@param layer number
---@param normalizedTime number
function Animator:Play(stateName, layer, normalizedTime) end
---@param stateNameHash number
---@param layer number
---@param normalizedTime number
function Animator:Play(stateNameHash, layer, normalizedTime) end
---@param stateNameHash number
---@param layer number
function Animator:Play(stateNameHash, layer) end
---@param stateNameHash number
function Animator:Play(stateNameHash) end
---@param targetIndex number
---@param targetNormalizedTime number
function Animator:SetTarget(targetIndex, targetNormalizedTime) end
---@param humanBoneId number
---@return Transform
function Animator:GetBoneTransform(humanBoneId) end
function Animator:StartPlayback() end
function Animator:StopPlayback() end
---@param frameCount number
function Animator:StartRecording(frameCount) end
function Animator:StopRecording() end
---@param layerIndex number
---@param stateID number
---@return boolean
function Animator:HasState(layerIndex, stateID) end
---@param deltaTime number
function Animator:Update(deltaTime) end
function Animator:Rebind() end
function Animator:ApplyBuiltinRootMotion() end
---@param name string
---@return number
function Animator.StringToHash(name) end

---@class Input
---@field simulateMouseWithTouches boolean @[static]
---@field anyKey boolean @[static]
---@field anyKeyDown boolean @[static]
---@field inputString string @[static]
---@field mousePosition Vector3 @[static]
---@field mouseScrollDelta Vector2 @[static]
---@field imeCompositionMode number @[static]
---@field compositionString string @[static]
---@field imeIsSelected boolean @[static]
---@field compositionCursorPos Vector2 @[static]
---@field mousePresent boolean @[static]
---@field touchCount number @[static]
---@field touchPressureSupported boolean @[static]
---@field stylusTouchSupported boolean @[static]
---@field touchSupported boolean @[static]
---@field multiTouchEnabled boolean @[static]
---@field deviceOrientation number @[static]
---@field acceleration Vector3 @[static]
---@field compensateSensors boolean @[static]
---@field accelerationEventCount number @[static]
---@field backButtonLeavesApp boolean @[static]
---@field location LocationService @[static]
---@field compass Compass @[static]
---@field gyro Gyroscope @[static]
---@field touches Touch[] @[static]
---@field accelerationEvents AccelerationEvent[] @[static]
local Input = {}
---@param axisName string
---@return number
function Input.GetAxis(axisName) end
---@param axisName string
---@return number
function Input.GetAxisRaw(axisName) end
---@param buttonName string
---@return boolean
function Input.GetButton(buttonName) end
---@param buttonName string
---@return boolean
function Input.GetButtonDown(buttonName) end
---@param buttonName string
---@return boolean
function Input.GetButtonUp(buttonName) end
---@param button number
---@return boolean
function Input.GetMouseButton(button) end
---@param button number
---@return boolean
function Input.GetMouseButtonDown(button) end
---@param button number
---@return boolean
function Input.GetMouseButtonUp(button) end
function Input.ResetInputAxes() end
---@return string[]
function Input.GetJoystickNames() end
---@param index number
---@return Touch
function Input.GetTouch(index) end
---@param index number
---@return AccelerationEvent
function Input.GetAccelerationEvent(index) end
---@param key number
---@return boolean
function Input.GetKey(key) end
---@param name string
---@return boolean
function Input.GetKey(name) end
---@param key number
---@return boolean
function Input.GetKeyUp(key) end
---@param name string
---@return boolean
function Input.GetKeyUp(name) end
---@param key number
---@return boolean
function Input.GetKeyDown(key) end
---@param name string
---@return boolean
function Input.GetKeyDown(name) end

---@class KeyCode : Enum
---@field None number @[static]
---@field Backspace number @[static]
---@field Delete number @[static]
---@field Tab number @[static]
---@field Clear number @[static]
---@field Return number @[static]
---@field Pause number @[static]
---@field Escape number @[static]
---@field Space number @[static]
---@field Keypad0 number @[static]
---@field Keypad1 number @[static]
---@field Keypad2 number @[static]
---@field Keypad3 number @[static]
---@field Keypad4 number @[static]
---@field Keypad5 number @[static]
---@field Keypad6 number @[static]
---@field Keypad7 number @[static]
---@field Keypad8 number @[static]
---@field Keypad9 number @[static]
---@field KeypadPeriod number @[static]
---@field KeypadDivide number @[static]
---@field KeypadMultiply number @[static]
---@field KeypadMinus number @[static]
---@field KeypadPlus number @[static]
---@field KeypadEnter number @[static]
---@field KeypadEquals number @[static]
---@field UpArrow number @[static]
---@field DownArrow number @[static]
---@field RightArrow number @[static]
---@field LeftArrow number @[static]
---@field Insert number @[static]
---@field Home number @[static]
---@field End number @[static]
---@field PageUp number @[static]
---@field PageDown number @[static]
---@field F1 number @[static]
---@field F2 number @[static]
---@field F3 number @[static]
---@field F4 number @[static]
---@field F5 number @[static]
---@field F6 number @[static]
---@field F7 number @[static]
---@field F8 number @[static]
---@field F9 number @[static]
---@field F10 number @[static]
---@field F11 number @[static]
---@field F12 number @[static]
---@field F13 number @[static]
---@field F14 number @[static]
---@field F15 number @[static]
---@field Alpha0 number @[static]
---@field Alpha1 number @[static]
---@field Alpha2 number @[static]
---@field Alpha3 number @[static]
---@field Alpha4 number @[static]
---@field Alpha5 number @[static]
---@field Alpha6 number @[static]
---@field Alpha7 number @[static]
---@field Alpha8 number @[static]
---@field Alpha9 number @[static]
---@field Exclaim number @[static]
---@field DoubleQuote number @[static]
---@field Hash number @[static]
---@field Dollar number @[static]
---@field Percent number @[static]
---@field Ampersand number @[static]
---@field Quote number @[static]
---@field LeftParen number @[static]
---@field RightParen number @[static]
---@field Asterisk number @[static]
---@field Plus number @[static]
---@field Comma number @[static]
---@field Minus number @[static]
---@field Period number @[static]
---@field Slash number @[static]
---@field Colon number @[static]
---@field Semicolon number @[static]
---@field Less number @[static]
---@field Equals number @[static]
---@field Greater number @[static]
---@field Question number @[static]
---@field At number @[static]
---@field LeftBracket number @[static]
---@field Backslash number @[static]
---@field RightBracket number @[static]
---@field Caret number @[static]
---@field Underscore number @[static]
---@field BackQuote number @[static]
---@field A number @[static]
---@field B number @[static]
---@field C number @[static]
---@field D number @[static]
---@field E number @[static]
---@field F number @[static]
---@field G number @[static]
---@field H number @[static]
---@field I number @[static]
---@field J number @[static]
---@field K number @[static]
---@field L number @[static]
---@field M number @[static]
---@field N number @[static]
---@field O number @[static]
---@field P number @[static]
---@field Q number @[static]
---@field R number @[static]
---@field S number @[static]
---@field T number @[static]
---@field U number @[static]
---@field V number @[static]
---@field W number @[static]
---@field X number @[static]
---@field Y number @[static]
---@field Z number @[static]
---@field LeftCurlyBracket number @[static]
---@field Pipe number @[static]
---@field RightCurlyBracket number @[static]
---@field Tilde number @[static]
---@field Numlock number @[static]
---@field CapsLock number @[static]
---@field ScrollLock number @[static]
---@field RightShift number @[static]
---@field LeftShift number @[static]
---@field RightControl number @[static]
---@field LeftControl number @[static]
---@field RightAlt number @[static]
---@field LeftAlt number @[static]
---@field LeftCommand number @[static]
---@field LeftApple number @[static]
---@field LeftWindows number @[static]
---@field RightCommand number @[static]
---@field RightApple number @[static]
---@field RightWindows number @[static]
---@field AltGr number @[static]
---@field Help number @[static]
---@field Print number @[static]
---@field SysReq number @[static]
---@field Break number @[static]
---@field Menu number @[static]
---@field Mouse0 number @[static]
---@field Mouse1 number @[static]
---@field Mouse2 number @[static]
---@field Mouse3 number @[static]
---@field Mouse4 number @[static]
---@field Mouse5 number @[static]
---@field Mouse6 number @[static]
---@field JoystickButton0 number @[static]
---@field JoystickButton1 number @[static]
---@field JoystickButton2 number @[static]
---@field JoystickButton3 number @[static]
---@field JoystickButton4 number @[static]
---@field JoystickButton5 number @[static]
---@field JoystickButton6 number @[static]
---@field JoystickButton7 number @[static]
---@field JoystickButton8 number @[static]
---@field JoystickButton9 number @[static]
---@field JoystickButton10 number @[static]
---@field JoystickButton11 number @[static]
---@field JoystickButton12 number @[static]
---@field JoystickButton13 number @[static]
---@field JoystickButton14 number @[static]
---@field JoystickButton15 number @[static]
---@field JoystickButton16 number @[static]
---@field JoystickButton17 number @[static]
---@field JoystickButton18 number @[static]
---@field JoystickButton19 number @[static]
---@field Joystick1Button0 number @[static]
---@field Joystick1Button1 number @[static]
---@field Joystick1Button2 number @[static]
---@field Joystick1Button3 number @[static]
---@field Joystick1Button4 number @[static]
---@field Joystick1Button5 number @[static]
---@field Joystick1Button6 number @[static]
---@field Joystick1Button7 number @[static]
---@field Joystick1Button8 number @[static]
---@field Joystick1Button9 number @[static]
---@field Joystick1Button10 number @[static]
---@field Joystick1Button11 number @[static]
---@field Joystick1Button12 number @[static]
---@field Joystick1Button13 number @[static]
---@field Joystick1Button14 number @[static]
---@field Joystick1Button15 number @[static]
---@field Joystick1Button16 number @[static]
---@field Joystick1Button17 number @[static]
---@field Joystick1Button18 number @[static]
---@field Joystick1Button19 number @[static]
---@field Joystick2Button0 number @[static]
---@field Joystick2Button1 number @[static]
---@field Joystick2Button2 number @[static]
---@field Joystick2Button3 number @[static]
---@field Joystick2Button4 number @[static]
---@field Joystick2Button5 number @[static]
---@field Joystick2Button6 number @[static]
---@field Joystick2Button7 number @[static]
---@field Joystick2Button8 number @[static]
---@field Joystick2Button9 number @[static]
---@field Joystick2Button10 number @[static]
---@field Joystick2Button11 number @[static]
---@field Joystick2Button12 number @[static]
---@field Joystick2Button13 number @[static]
---@field Joystick2Button14 number @[static]
---@field Joystick2Button15 number @[static]
---@field Joystick2Button16 number @[static]
---@field Joystick2Button17 number @[static]
---@field Joystick2Button18 number @[static]
---@field Joystick2Button19 number @[static]
---@field Joystick3Button0 number @[static]
---@field Joystick3Button1 number @[static]
---@field Joystick3Button2 number @[static]
---@field Joystick3Button3 number @[static]
---@field Joystick3Button4 number @[static]
---@field Joystick3Button5 number @[static]
---@field Joystick3Button6 number @[static]
---@field Joystick3Button7 number @[static]
---@field Joystick3Button8 number @[static]
---@field Joystick3Button9 number @[static]
---@field Joystick3Button10 number @[static]
---@field Joystick3Button11 number @[static]
---@field Joystick3Button12 number @[static]
---@field Joystick3Button13 number @[static]
---@field Joystick3Button14 number @[static]
---@field Joystick3Button15 number @[static]
---@field Joystick3Button16 number @[static]
---@field Joystick3Button17 number @[static]
---@field Joystick3Button18 number @[static]
---@field Joystick3Button19 number @[static]
---@field Joystick4Button0 number @[static]
---@field Joystick4Button1 number @[static]
---@field Joystick4Button2 number @[static]
---@field Joystick4Button3 number @[static]
---@field Joystick4Button4 number @[static]
---@field Joystick4Button5 number @[static]
---@field Joystick4Button6 number @[static]
---@field Joystick4Button7 number @[static]
---@field Joystick4Button8 number @[static]
---@field Joystick4Button9 number @[static]
---@field Joystick4Button10 number @[static]
---@field Joystick4Button11 number @[static]
---@field Joystick4Button12 number @[static]
---@field Joystick4Button13 number @[static]
---@field Joystick4Button14 number @[static]
---@field Joystick4Button15 number @[static]
---@field Joystick4Button16 number @[static]
---@field Joystick4Button17 number @[static]
---@field Joystick4Button18 number @[static]
---@field Joystick4Button19 number @[static]
---@field Joystick5Button0 number @[static]
---@field Joystick5Button1 number @[static]
---@field Joystick5Button2 number @[static]
---@field Joystick5Button3 number @[static]
---@field Joystick5Button4 number @[static]
---@field Joystick5Button5 number @[static]
---@field Joystick5Button6 number @[static]
---@field Joystick5Button7 number @[static]
---@field Joystick5Button8 number @[static]
---@field Joystick5Button9 number @[static]
---@field Joystick5Button10 number @[static]
---@field Joystick5Button11 number @[static]
---@field Joystick5Button12 number @[static]
---@field Joystick5Button13 number @[static]
---@field Joystick5Button14 number @[static]
---@field Joystick5Button15 number @[static]
---@field Joystick5Button16 number @[static]
---@field Joystick5Button17 number @[static]
---@field Joystick5Button18 number @[static]
---@field Joystick5Button19 number @[static]
---@field Joystick6Button0 number @[static]
---@field Joystick6Button1 number @[static]
---@field Joystick6Button2 number @[static]
---@field Joystick6Button3 number @[static]
---@field Joystick6Button4 number @[static]
---@field Joystick6Button5 number @[static]
---@field Joystick6Button6 number @[static]
---@field Joystick6Button7 number @[static]
---@field Joystick6Button8 number @[static]
---@field Joystick6Button9 number @[static]
---@field Joystick6Button10 number @[static]
---@field Joystick6Button11 number @[static]
---@field Joystick6Button12 number @[static]
---@field Joystick6Button13 number @[static]
---@field Joystick6Button14 number @[static]
---@field Joystick6Button15 number @[static]
---@field Joystick6Button16 number @[static]
---@field Joystick6Button17 number @[static]
---@field Joystick6Button18 number @[static]
---@field Joystick6Button19 number @[static]
---@field Joystick7Button0 number @[static]
---@field Joystick7Button1 number @[static]
---@field Joystick7Button2 number @[static]
---@field Joystick7Button3 number @[static]
---@field Joystick7Button4 number @[static]
---@field Joystick7Button5 number @[static]
---@field Joystick7Button6 number @[static]
---@field Joystick7Button7 number @[static]
---@field Joystick7Button8 number @[static]
---@field Joystick7Button9 number @[static]
---@field Joystick7Button10 number @[static]
---@field Joystick7Button11 number @[static]
---@field Joystick7Button12 number @[static]
---@field Joystick7Button13 number @[static]
---@field Joystick7Button14 number @[static]
---@field Joystick7Button15 number @[static]
---@field Joystick7Button16 number @[static]
---@field Joystick7Button17 number @[static]
---@field Joystick7Button18 number @[static]
---@field Joystick7Button19 number @[static]
---@field Joystick8Button0 number @[static]
---@field Joystick8Button1 number @[static]
---@field Joystick8Button2 number @[static]
---@field Joystick8Button3 number @[static]
---@field Joystick8Button4 number @[static]
---@field Joystick8Button5 number @[static]
---@field Joystick8Button6 number @[static]
---@field Joystick8Button7 number @[static]
---@field Joystick8Button8 number @[static]
---@field Joystick8Button9 number @[static]
---@field Joystick8Button10 number @[static]
---@field Joystick8Button11 number @[static]
---@field Joystick8Button12 number @[static]
---@field Joystick8Button13 number @[static]
---@field Joystick8Button14 number @[static]
---@field Joystick8Button15 number @[static]
---@field Joystick8Button16 number @[static]
---@field Joystick8Button17 number @[static]
---@field Joystick8Button18 number @[static]
---@field Joystick8Button19 number @[static]
---@field value__ number
local KeyCode = {}

---@class SkinnedMeshRenderer : Renderer
---@field quality number
---@field updateWhenOffscreen boolean
---@field forceMatrixRecalculationPerRender boolean
---@field rootBone Transform
---@field bones Transform[]
---@field sharedMesh Mesh
---@field skinnedMotionVectors boolean
---@field localBounds Bounds
local SkinnedMeshRenderer = {}
---@param index number
---@return number
function SkinnedMeshRenderer:GetBlendShapeWeight(index) end
---@param index number
---@param value number
function SkinnedMeshRenderer:SetBlendShapeWeight(index, value) end
---@param mesh Mesh
function SkinnedMeshRenderer:BakeMesh(mesh) end

---@class Space : Enum
---@field World number @[static]
---@field Self number @[static]
---@field value__ number
local Space = {}

---@class MeshRenderer : Renderer
---@field additionalVertexStreams Mesh
---@field subMeshStartIndex number
---@field scaleInLightmap number
---@field receiveGI number
---@field stitchLightmapSeams boolean
local MeshRenderer = {}

---@class BoxCollider : Collider
---@field center Vector3
---@field size Vector3
local BoxCollider = {}

---@class MeshCollider : Collider
---@field sharedMesh Mesh
---@field convex boolean
---@field cookingOptions number
local MeshCollider = {}

---@class SphereCollider : Collider
---@field center Vector3
---@field radius number
local SphereCollider = {}

---@class CharacterController : Collider
---@field velocity Vector3
---@field isGrounded boolean
---@field collisionFlags number
---@field radius number
---@field height number
---@field center Vector3
---@field slopeLimit number
---@field stepOffset number
---@field skinWidth number
---@field minMoveDistance number
---@field detectCollisions boolean
---@field enableOverlapRecovery boolean
local CharacterController = {}
---@param speed Vector3
---@return boolean
function CharacterController:SimpleMove(speed) end
---@param motion Vector3
---@return number
function CharacterController:Move(motion) end

---@class CapsuleCollider : Collider
---@field center Vector3
---@field radius number
---@field height number
---@field direction number
local CapsuleCollider = {}

---@class AnimationClip : Motion
---@field length number
---@field frameRate number
---@field wrapMode number
---@field localBounds Bounds
---@field legacy boolean
---@field humanMotion boolean
---@field empty boolean
---@field hasGenericRootTransform boolean
---@field hasMotionFloatCurves boolean
---@field hasMotionCurves boolean
---@field hasRootCurves boolean
---@field events AnimationEvent[]
local AnimationClip = {}
---@param go GameObject
---@param time number
function AnimationClip:SampleAnimation(go, time) end
---@param relativePath string
---@param type Type
---@param propertyName string
---@param curve AnimationCurve
function AnimationClip:SetCurve(relativePath, type, propertyName, curve) end
function AnimationClip:EnsureQuaternionContinuity() end
function AnimationClip:ClearCurves() end
---@param evt AnimationEvent
function AnimationClip:AddEvent(evt) end

---@class AnimationState : TrackedReference
---@field enabled boolean
---@field weight number
---@field wrapMode number
---@field time number
---@field normalizedTime number
---@field speed number
---@field normalizedSpeed number
---@field length number
---@field layer number
---@field clip AnimationClip
---@field name string
---@field blendMode number
local AnimationState = {}
---@param mix Transform
---@param recursive boolean
function AnimationState:AddMixingTransform(mix, recursive) end
---@param mix Transform
function AnimationState:AddMixingTransform(mix) end
---@param mix Transform
function AnimationState:RemoveMixingTransform(mix) end

---@class AnimationBlendMode : Enum
---@field Blend number @[static]
---@field Additive number @[static]
---@field value__ number
local AnimationBlendMode = {}

---@class QueueMode : Enum
---@field CompleteOthers number @[static]
---@field PlayNow number @[static]
---@field value__ number
local QueueMode = {}

---@class PlayMode : Enum
---@field StopSameLayer number @[static]
---@field StopAll number @[static]
---@field value__ number
local PlayMode = {}

---@class WrapMode : Enum
---@field Once number @[static]
---@field Loop number @[static]
---@field PingPong number @[static]
---@field Default number @[static]
---@field ClampForever number @[static]
---@field Clamp number @[static]
---@field value__ number
local WrapMode = {}

---@class QualitySettings : Object
---@field pixelLightCount number @[static]
---@field shadows number @[static]
---@field shadowProjection number @[static]
---@field shadowCascades number @[static]
---@field shadowDistance number @[static]
---@field shadowResolution number @[static]
---@field shadowmaskMode number @[static]
---@field shadowNearPlaneOffset number @[static]
---@field shadowCascade2Split number @[static]
---@field shadowCascade4Split Vector3 @[static]
---@field lodBias number @[static]
---@field anisotropicFiltering number @[static]
---@field masterTextureLimit number @[static]
---@field maximumLODLevel number @[static]
---@field particleRaycastBudget number @[static]
---@field softParticles boolean @[static]
---@field softVegetation boolean @[static]
---@field vSyncCount number @[static]
---@field antiAliasing number @[static]
---@field asyncUploadTimeSlice number @[static]
---@field asyncUploadBufferSize number @[static]
---@field asyncUploadPersistentBuffer boolean @[static]
---@field realtimeReflectionProbes boolean @[static]
---@field billboardsFaceCameraPosition boolean @[static]
---@field resolutionScalingFixedDPIFactor number @[static]
---@field renderPipeline RenderPipelineAsset @[static]
---@field skinWeights number @[static]
---@field streamingMipmapsActive boolean @[static]
---@field streamingMipmapsMemoryBudget number @[static]
---@field streamingMipmapsAddAllCameras boolean @[static]
---@field streamingMipmapsMaxFileIORequests number @[static]
---@field maxQueuedFrames number @[static]
---@field names string[] @[static]
---@field desiredColorSpace number @[static]
---@field activeColorSpace number @[static]
local QualitySettings = {}
---@param applyExpensiveChanges boolean
function QualitySettings.IncreaseLevel(applyExpensiveChanges) end
---@param applyExpensiveChanges boolean
function QualitySettings.DecreaseLevel(applyExpensiveChanges) end
---@param index number
function QualitySettings.SetQualityLevel(index) end
function QualitySettings.IncreaseLevel() end
function QualitySettings.DecreaseLevel() end
---@param index number
---@return RenderPipelineAsset
function QualitySettings.GetRenderPipelineAssetAt(index) end
---@return number
function QualitySettings.GetQualityLevel() end
---@param index number
---@param applyExpensiveChanges boolean
function QualitySettings.SetQualityLevel(index, applyExpensiveChanges) end

---@class RenderSettings : Object
---@field fog boolean @[static]
---@field fogStartDistance number @[static]
---@field fogEndDistance number @[static]
---@field fogMode number @[static]
---@field fogColor Color @[static]
---@field fogDensity number @[static]
---@field ambientMode number @[static]
---@field ambientSkyColor Color @[static]
---@field ambientEquatorColor Color @[static]
---@field ambientGroundColor Color @[static]
---@field ambientIntensity number @[static]
---@field ambientLight Color @[static]
---@field subtractiveShadowColor Color @[static]
---@field skybox Material @[static]
---@field sun Light @[static]
---@field ambientProbe SphericalHarmonicsL2 @[static]
---@field customReflection Cubemap @[static]
---@field reflectionIntensity number @[static]
---@field reflectionBounces number @[static]
---@field defaultReflectionMode number @[static]
---@field defaultReflectionResolution number @[static]
---@field haloStrength number @[static]
---@field flareStrength number @[static]
---@field flareFadeSpeed number @[static]
local RenderSettings = {}

---@class SkinWeights : Enum
---@field OneBone number @[static]
---@field TwoBones number @[static]
---@field FourBones number @[static]
---@field Unlimited number @[static]
---@field value__ number
local SkinWeights = {}

---@class RenderTexture : Texture
---@field active RenderTexture @[static]
---@field width number
---@field height number
---@field dimension number
---@field graphicsFormat number
---@field useMipMap boolean
---@field sRGB boolean
---@field vrUsage number
---@field memorylessMode number
---@field format number
---@field stencilFormat number
---@field autoGenerateMips boolean
---@field volumeDepth number
---@field antiAliasing number
---@field bindTextureMS boolean
---@field enableRandomWrite boolean
---@field useDynamicScale boolean
---@field isPowerOfTwo boolean
---@field colorBuffer RenderBuffer
---@field depthBuffer RenderBuffer
---@field depth number
---@field descriptor RenderTextureDescriptor
local RenderTexture = {}
---@return IntPtr
function RenderTexture:GetNativeDepthBufferPtr() end
---@param discardColor boolean
---@param discardDepth boolean
function RenderTexture:DiscardContents(discardColor, discardDepth) end
function RenderTexture:MarkRestoreExpected() end
function RenderTexture:DiscardContents() end
function RenderTexture:ResolveAntiAliasedSurface() end
---@param target RenderTexture
function RenderTexture:ResolveAntiAliasedSurface(target) end
---@param propertyName string
function RenderTexture:SetGlobalShaderProperty(propertyName) end
---@return boolean
function RenderTexture:Create() end
function RenderTexture:Release() end
---@return boolean
function RenderTexture:IsCreated() end
function RenderTexture:GenerateMips() end
---@param equirect RenderTexture
---@param eye number
function RenderTexture:ConvertToEquirect(equirect, eye) end
---@param rt RenderTexture
---@return boolean
function RenderTexture.SupportsStencil(rt) end
---@param temp RenderTexture
function RenderTexture.ReleaseTemporary(temp) end
---@param desc RenderTextureDescriptor
---@return RenderTexture
function RenderTexture.GetTemporary(desc) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param antiAliasing number
---@param memorylessMode number
---@param vrUsage number
---@param useDynamicScale boolean
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode, vrUsage, useDynamicScale) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param antiAliasing number
---@param memorylessMode number
---@param vrUsage number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode, vrUsage) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param antiAliasing number
---@param memorylessMode number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing, memorylessMode) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param antiAliasing number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, antiAliasing) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param readWrite number
---@param antiAliasing number
---@param memorylessMode number
---@param vrUsage number
---@param useDynamicScale boolean
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage, useDynamicScale) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param readWrite number
---@param antiAliasing number
---@param memorylessMode number
---@param vrUsage number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode, vrUsage) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param readWrite number
---@param antiAliasing number
---@param memorylessMode number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing, memorylessMode) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param readWrite number
---@param antiAliasing number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite, antiAliasing) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@param readWrite number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format, readWrite) end
---@param width number
---@param height number
---@param depthBuffer number
---@param format number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer, format) end
---@param width number
---@param height number
---@param depthBuffer number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height, depthBuffer) end
---@param width number
---@param height number
---@return RenderTexture
function RenderTexture.GetTemporary(width, height) end

---@class Resources
local Resources = {}
---@param type Type
---@return Object[]
function Resources.FindObjectsOfTypeAll(type) end
---@return T[]
function Resources.FindObjectsOfTypeAll() end
---@param path string
---@return Object
function Resources.Load(path) end
---@param path string
---@return T
function Resources.Load(path) end
---@param path string
---@param systemTypeInstance Type
---@return Object
function Resources.Load(path, systemTypeInstance) end
---@param path string
---@return ResourceRequest
function Resources.LoadAsync(path) end
---@param path string
---@return ResourceRequest
function Resources.LoadAsync(path) end
---@param path string
---@param type Type
---@return ResourceRequest
function Resources.LoadAsync(path, type) end
---@param path string
---@param systemTypeInstance Type
---@return Object[]
function Resources.LoadAll(path, systemTypeInstance) end
---@param path string
---@return Object[]
function Resources.LoadAll(path) end
---@param path string
---@return T[]
function Resources.LoadAll(path) end
---@param type Type
---@param path string
---@return Object
function Resources.GetBuiltinResource(type, path) end
---@param path string
---@return T
function Resources.GetBuiltinResource(path) end
---@param assetToUnload Object
function Resources.UnloadAsset(assetToUnload) end
---@return AsyncOperation
function Resources.UnloadUnusedAssets() end

---@class LuaProfiler
---@field list List<string> @[static]
LuaProfiler = {}
function LuaProfiler.Clear() end
---@param name string
---@return number
function LuaProfiler.GetID(name) end
---@param id number
function LuaProfiler.BeginSample(id) end
function LuaProfiler.EndSample() end

---@class DebugGrid : MonoBehaviour
---@field Instance DebugGrid @[static]
---@field width number
---@field height number
---@field curBrushType number
---@field curBrushSetType number
---@field ifStartSaveData boolean
---@field curSelectAreaID number
---@field blockData ANode[][]
---@field lstWidth List<Vector2>[]
---@field lstHeight List<Vector2>[]
---@field offsetY number
---@field islandOffsetY number
---@field brushSize number
---@field focusTrm Transform
---@field showIsland boolean
---@field m_x number
---@field m_z number
---@field items List<number>
DebugGrid = {}
---@param from number
---@param to number
function DebugGrid:updateListWidth(from, to) end
---@param from number
---@param to number
function DebugGrid:updateListHeight(from, to) end
---@param items number[]
function DebugGrid:SetItems(items) end

---@class AstarParam
---@field mapDataArr2 number[][]
---@field startX number
---@field startY number
---@field endX number
---@field endY number
---@field maxStep number
---@field G number
---@field ifNum boolean
---@field ifFlyd boolean
---@field flydNum number
---@field ctrl DemoControl
AstarParam = {}

---@class DemoControl : MonoBehaviour
---@field instance DemoControl @[static]
---@field mapWidth number @[static]
---@field mapHeight number @[static]
---@field terrain Terrain
---@field G number
---@field NUM_PER_SESS number
---@field ifInverse boolean
---@field debugGrid DebugGrid
---@field luaManager LuaManager
---@field jpsHelper JpsHelperManager
---@field spos string
---@field tpos string
DemoControl = {}
function DemoControl:Awake() end
function DemoControl:OnDestroy() end
---@param items number[]
function DemoControl:DrawPath(items) end

---@class Enum
local Enum = {}
---@param obj Object
---@return boolean
function Enum:Equals(obj) end
---@return number
function Enum:GetHashCode() end
---@return string
function Enum:ToString() end
---@param target Object
---@return number
function Enum:CompareTo(target) end
---@param format string
---@return string
function Enum:ToString(format) end
---@param flag Enum
---@return boolean
function Enum:HasFlag(flag) end
---@return number
function Enum:GetTypeCode() end
---@param value string
---@param result TEnum&
---@return boolean
function Enum.TryParse(value, result) end
---@param value string
---@param ignoreCase boolean
---@param result TEnum&
---@return boolean
function Enum.TryParse(value, ignoreCase, result) end
---@param enumType Type
---@param value string
---@return Object
function Enum.Parse(enumType, value) end
---@param enumType Type
---@param value string
---@param ignoreCase boolean
---@return Object
function Enum.Parse(enumType, value, ignoreCase) end
---@param enumType Type
---@return Type
function Enum.GetUnderlyingType(enumType) end
---@param enumType Type
---@return Array
function Enum.GetValues(enumType) end
---@param enumType Type
---@param value Object
---@return string
function Enum.GetName(enumType, value) end
---@param enumType Type
---@return string[]
function Enum.GetNames(enumType) end
---@param enumType Type
---@param value Object
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value Object
---@return boolean
function Enum.IsDefined(enumType, value) end
---@param enumType Type
---@param value Object
---@param format string
---@return string
function Enum.Format(enumType, value, format) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end
---@param enumType Type
---@param value number
---@return Object
function Enum.ToObject(enumType, value) end

---@class Object
---@field name string
---@field hideFlags number
local Object = {}
---@return number
function Object:GetInstanceID() end
---@return number
function Object:GetHashCode() end
---@param other Object
---@return boolean
function Object:Equals(other) end
---@return string
function Object:ToString() end
---@param original Object
---@param position Vector3
---@param rotation Quaternion
---@return Object
function Object.Instantiate(original, position, rotation) end
---@param original Object
---@param position Vector3
---@param rotation Quaternion
---@param parent Transform
---@return Object
function Object.Instantiate(original, position, rotation, parent) end
---@param original Object
---@return Object
function Object.Instantiate(original) end
---@param original Object
---@param parent Transform
---@return Object
function Object.Instantiate(original, parent) end
---@param original Object
---@param parent Transform
---@param instantiateInWorldSpace boolean
---@return Object
function Object.Instantiate(original, parent, instantiateInWorldSpace) end
---@param original T
---@return T
function Object.Instantiate(original) end
---@param original T
---@param position Vector3
---@param rotation Quaternion
---@return T
function Object.Instantiate(original, position, rotation) end
---@param original T
---@param position Vector3
---@param rotation Quaternion
---@param parent Transform
---@return T
function Object.Instantiate(original, position, rotation, parent) end
---@param original T
---@param parent Transform
---@return T
function Object.Instantiate(original, parent) end
---@param original T
---@param parent Transform
---@param worldPositionStays boolean
---@return T
function Object.Instantiate(original, parent, worldPositionStays) end
---@param obj Object
---@param t number
function Object.Destroy(obj, t) end
---@param obj Object
function Object.Destroy(obj) end
---@param obj Object
---@param allowDestroyingAssets boolean
function Object.DestroyImmediate(obj, allowDestroyingAssets) end
---@param obj Object
function Object.DestroyImmediate(obj) end
---@param type Type
---@return Object[]
function Object.FindObjectsOfType(type) end
---@param target Object
function Object.DontDestroyOnLoad(target) end
---@return T[]
function Object.FindObjectsOfType() end
---@return T
function Object.FindObjectOfType() end
---@param type Type
---@return Object
function Object.FindObjectOfType(type) end

---@class Vector3
---@field zero Vector3 @[static]
---@field one Vector3 @[static]
---@field forward Vector3 @[static]
---@field back Vector3 @[static]
---@field up Vector3 @[static]
---@field down Vector3 @[static]
---@field left Vector3 @[static]
---@field right Vector3 @[static]
---@field positiveInfinity Vector3 @[static]
---@field negativeInfinity Vector3 @[static]
---@field kEpsilon number @[static]
---@field kEpsilonNormalSqrt number @[static]
---@field Item number
---@field normalized Vector3
---@field magnitude number
---@field sqrMagnitude number
---@field x number
---@field y number
---@field z number
local Vector3 = {}
---@param newX number
---@param newY number
---@param newZ number
function Vector3:Set(newX, newY, newZ) end
---@param scale Vector3
function Vector3:Scale(scale) end
---@return number
function Vector3:GetHashCode() end
---@param other Object
---@return boolean
function Vector3:Equals(other) end
---@param other Vector3
---@return boolean
function Vector3:Equals(other) end
function Vector3:Normalize() end
---@return string
function Vector3:ToString() end
---@param format string
---@return string
function Vector3:ToString(format) end
---@param a Vector3
---@param b Vector3
---@param t number
---@return Vector3
function Vector3.Slerp(a, b, t) end
---@param a Vector3
---@param b Vector3
---@param t number
---@return Vector3
function Vector3.SlerpUnclamped(a, b, t) end
---@param normal Vector3&
---@param tangent Vector3&
function Vector3.OrthoNormalize(normal, tangent) end
---@param normal Vector3&
---@param tangent Vector3&
---@param binormal Vector3&
function Vector3.OrthoNormalize(normal, tangent, binormal) end
---@param current Vector3
---@param target Vector3
---@param maxRadiansDelta number
---@param maxMagnitudeDelta number
---@return Vector3
function Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta) end
---@param a Vector3
---@param b Vector3
---@param t number
---@return Vector3
function Vector3.Lerp(a, b, t) end
---@param a Vector3
---@param b Vector3
---@param t number
---@return Vector3
function Vector3.LerpUnclamped(a, b, t) end
---@param current Vector3
---@param target Vector3
---@param maxDistanceDelta number
---@return Vector3
function Vector3.MoveTowards(current, target, maxDistanceDelta) end
---@param current Vector3
---@param target Vector3
---@param currentVelocity Vector3&
---@param smoothTime number
---@param maxSpeed number
---@return Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end
---@param current Vector3
---@param target Vector3
---@param currentVelocity Vector3&
---@param smoothTime number
---@return Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime) end
---@param current Vector3
---@param target Vector3
---@param currentVelocity Vector3&
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime) end
---@param a Vector3
---@param b Vector3
---@return Vector3
function Vector3.Scale(a, b) end
---@param lhs Vector3
---@param rhs Vector3
---@return Vector3
function Vector3.Cross(lhs, rhs) end
---@param inDirection Vector3
---@param inNormal Vector3
---@return Vector3
function Vector3.Reflect(inDirection, inNormal) end
---@param value Vector3
---@return Vector3
function Vector3.Normalize(value) end
---@param lhs Vector3
---@param rhs Vector3
---@return number
function Vector3.Dot(lhs, rhs) end
---@param vector Vector3
---@param onNormal Vector3
---@return Vector3
function Vector3.Project(vector, onNormal) end
---@param vector Vector3
---@param planeNormal Vector3
---@return Vector3
function Vector3.ProjectOnPlane(vector, planeNormal) end
---@param from Vector3
---@param to Vector3
---@return number
function Vector3.Angle(from, to) end
---@param from Vector3
---@param to Vector3
---@param axis Vector3
---@return number
function Vector3.SignedAngle(from, to, axis) end
---@param a Vector3
---@param b Vector3
---@return number
function Vector3.Distance(a, b) end
---@param vector Vector3
---@param maxLength number
---@return Vector3
function Vector3.ClampMagnitude(vector, maxLength) end
---@param vector Vector3
---@return number
function Vector3.Magnitude(vector) end
---@param vector Vector3
---@return number
function Vector3.SqrMagnitude(vector) end
---@param lhs Vector3
---@param rhs Vector3
---@return Vector3
function Vector3.Min(lhs, rhs) end
---@param lhs Vector3
---@param rhs Vector3
---@return Vector3
function Vector3.Max(lhs, rhs) end

---@class Quaternion
---@field identity Quaternion @[static]
---@field kEpsilon number @[static]
---@field Item number
---@field eulerAngles Vector3
---@field normalized Quaternion
---@field x number
---@field y number
---@field z number
---@field w number
local Quaternion = {}
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function Quaternion:Set(newX, newY, newZ, newW) end
---@param view Vector3
function Quaternion:SetLookRotation(view) end
---@param view Vector3
---@param up Vector3
function Quaternion:SetLookRotation(view, up) end
---@param angle Single&
---@param axis Vector3&
function Quaternion:ToAngleAxis(angle, axis) end
---@param fromDirection Vector3
---@param toDirection Vector3
function Quaternion:SetFromToRotation(fromDirection, toDirection) end
function Quaternion:Normalize() end
---@return number
function Quaternion:GetHashCode() end
---@param other Object
---@return boolean
function Quaternion:Equals(other) end
---@param other Quaternion
---@return boolean
function Quaternion:Equals(other) end
---@return string
function Quaternion:ToString() end
---@param format string
---@return string
function Quaternion:ToString(format) end
---@param fromDirection Vector3
---@param toDirection Vector3
---@return Quaternion
function Quaternion.FromToRotation(fromDirection, toDirection) end
---@param rotation Quaternion
---@return Quaternion
function Quaternion.Inverse(rotation) end
---@param a Quaternion
---@param b Quaternion
---@param t number
---@return Quaternion
function Quaternion.Slerp(a, b, t) end
---@param a Quaternion
---@param b Quaternion
---@param t number
---@return Quaternion
function Quaternion.SlerpUnclamped(a, b, t) end
---@param a Quaternion
---@param b Quaternion
---@param t number
---@return Quaternion
function Quaternion.Lerp(a, b, t) end
---@param a Quaternion
---@param b Quaternion
---@param t number
---@return Quaternion
function Quaternion.LerpUnclamped(a, b, t) end
---@param angle number
---@param axis Vector3
---@return Quaternion
function Quaternion.AngleAxis(angle, axis) end
---@param forward Vector3
---@param upwards Vector3
---@return Quaternion
function Quaternion.LookRotation(forward, upwards) end
---@param forward Vector3
---@return Quaternion
function Quaternion.LookRotation(forward) end
---@param a Quaternion
---@param b Quaternion
---@return number
function Quaternion.Dot(a, b) end
---@param a Quaternion
---@param b Quaternion
---@return number
function Quaternion.Angle(a, b) end
---@param x number
---@param y number
---@param z number
---@return Quaternion
function Quaternion.Euler(x, y, z) end
---@param euler Vector3
---@return Quaternion
function Quaternion.Euler(euler) end
---@param from Quaternion
---@param to Quaternion
---@param maxDegreesDelta number
---@return Quaternion
function Quaternion.RotateTowards(from, to, maxDegreesDelta) end
---@param q Quaternion
---@return Quaternion
function Quaternion.Normalize(q) end

---@class Matrix4x4
---@field zero Matrix4x4 @[static]
---@field identity Matrix4x4 @[static]
---@field rotation Quaternion
---@field lossyScale Vector3
---@field isIdentity boolean
---@field determinant number
---@field decomposeProjection FrustumPlanes
---@field inverse Matrix4x4
---@field transpose Matrix4x4
---@field Item number
---@field Item number
---@field m00 number
---@field m10 number
---@field m20 number
---@field m30 number
---@field m01 number
---@field m11 number
---@field m21 number
---@field m31 number
---@field m02 number
---@field m12 number
---@field m22 number
---@field m32 number
---@field m03 number
---@field m13 number
---@field m23 number
---@field m33 number
local Matrix4x4 = {}
---@return boolean
function Matrix4x4:ValidTRS() end
---@param pos Vector3
---@param q Quaternion
---@param s Vector3
function Matrix4x4:SetTRS(pos, q, s) end
---@return number
function Matrix4x4:GetHashCode() end
---@param other Object
---@return boolean
function Matrix4x4:Equals(other) end
---@param other Matrix4x4
---@return boolean
function Matrix4x4:Equals(other) end
---@param index number
---@return Vector4
function Matrix4x4:GetColumn(index) end
---@param index number
---@return Vector4
function Matrix4x4:GetRow(index) end
---@param index number
---@param column Vector4
function Matrix4x4:SetColumn(index, column) end
---@param index number
---@param row Vector4
function Matrix4x4:SetRow(index, row) end
---@param point Vector3
---@return Vector3
function Matrix4x4:MultiplyPoint(point) end
---@param point Vector3
---@return Vector3
function Matrix4x4:MultiplyPoint3x4(point) end
---@param vector Vector3
---@return Vector3
function Matrix4x4:MultiplyVector(vector) end
---@param plane Plane
---@return Plane
function Matrix4x4:TransformPlane(plane) end
---@return string
function Matrix4x4:ToString() end
---@param format string
---@return string
function Matrix4x4:ToString(format) end
---@param m Matrix4x4
---@return number
function Matrix4x4.Determinant(m) end
---@param pos Vector3
---@param q Quaternion
---@param s Vector3
---@return Matrix4x4
function Matrix4x4.TRS(pos, q, s) end
---@param input Matrix4x4
---@param result Matrix4x4&
---@return boolean
function Matrix4x4.Inverse3DAffine(input, result) end
---@param m Matrix4x4
---@return Matrix4x4
function Matrix4x4.Inverse(m) end
---@param m Matrix4x4
---@return Matrix4x4
function Matrix4x4.Transpose(m) end
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
---@return Matrix4x4
function Matrix4x4.Ortho(left, right, bottom, top, zNear, zFar) end
---@param fov number
---@param aspect number
---@param zNear number
---@param zFar number
---@return Matrix4x4
function Matrix4x4.Perspective(fov, aspect, zNear, zFar) end
---@param from Vector3
---@param to Vector3
---@param up Vector3
---@return Matrix4x4
function Matrix4x4.LookAt(from, to, up) end
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
---@return Matrix4x4
function Matrix4x4.Frustum(left, right, bottom, top, zNear, zFar) end
---@param fp FrustumPlanes
---@return Matrix4x4
function Matrix4x4.Frustum(fp) end
---@param vector Vector3
---@return Matrix4x4
function Matrix4x4.Scale(vector) end
---@param vector Vector3
---@return Matrix4x4
function Matrix4x4.Translate(vector) end
---@param q Quaternion
---@return Matrix4x4
function Matrix4x4.Rotate(q) end

---@class Color
---@field red Color @[static]
---@field green Color @[static]
---@field blue Color @[static]
---@field white Color @[static]
---@field black Color @[static]
---@field yellow Color @[static]
---@field cyan Color @[static]
---@field magenta Color @[static]
---@field gray Color @[static]
---@field grey Color @[static]
---@field clear Color @[static]
---@field grayscale number
---@field linear Color
---@field gamma Color
---@field maxColorComponent number
---@field Item number
---@field r number
---@field g number
---@field b number
---@field a number
local Color = {}
---@return string
function Color:ToString() end
---@param format string
---@return string
function Color:ToString(format) end
---@return number
function Color:GetHashCode() end
---@param other Object
---@return boolean
function Color:Equals(other) end
---@param other Color
---@return boolean
function Color:Equals(other) end
---@param a Color
---@param b Color
---@param t number
---@return Color
function Color.Lerp(a, b, t) end
---@param a Color
---@param b Color
---@param t number
---@return Color
function Color.LerpUnclamped(a, b, t) end
---@param rgbColor Color
---@param H Single&
---@param S Single&
---@param V Single&
function Color.RGBToHSV(rgbColor, H, S, V) end
---@param H number
---@param S number
---@param V number
---@return Color
function Color.HSVToRGB(H, S, V) end
---@param H number
---@param S number
---@param V number
---@param hdr boolean
---@return Color
function Color.HSVToRGB(H, S, V, hdr) end

---@class Vector2
---@field zero Vector2 @[static]
---@field one Vector2 @[static]
---@field up Vector2 @[static]
---@field down Vector2 @[static]
---@field left Vector2 @[static]
---@field right Vector2 @[static]
---@field positiveInfinity Vector2 @[static]
---@field negativeInfinity Vector2 @[static]
---@field kEpsilon number @[static]
---@field kEpsilonNormalSqrt number @[static]
---@field Item number
---@field normalized Vector2
---@field magnitude number
---@field sqrMagnitude number
---@field x number
---@field y number
local Vector2 = {}
---@param newX number
---@param newY number
function Vector2:Set(newX, newY) end
---@param scale Vector2
function Vector2:Scale(scale) end
function Vector2:Normalize() end
---@return string
function Vector2:ToString() end
---@param format string
---@return string
function Vector2:ToString(format) end
---@return number
function Vector2:GetHashCode() end
---@param other Object
---@return boolean
function Vector2:Equals(other) end
---@param other Vector2
---@return boolean
function Vector2:Equals(other) end
---@return number
function Vector2:SqrMagnitude() end
---@param a Vector2
---@param b Vector2
---@param t number
---@return Vector2
function Vector2.Lerp(a, b, t) end
---@param a Vector2
---@param b Vector2
---@param t number
---@return Vector2
function Vector2.LerpUnclamped(a, b, t) end
---@param current Vector2
---@param target Vector2
---@param maxDistanceDelta number
---@return Vector2
function Vector2.MoveTowards(current, target, maxDistanceDelta) end
---@param a Vector2
---@param b Vector2
---@return Vector2
function Vector2.Scale(a, b) end
---@param inDirection Vector2
---@param inNormal Vector2
---@return Vector2
function Vector2.Reflect(inDirection, inNormal) end
---@param inDirection Vector2
---@return Vector2
function Vector2.Perpendicular(inDirection) end
---@param lhs Vector2
---@param rhs Vector2
---@return number
function Vector2.Dot(lhs, rhs) end
---@param from Vector2
---@param to Vector2
---@return number
function Vector2.Angle(from, to) end
---@param from Vector2
---@param to Vector2
---@return number
function Vector2.SignedAngle(from, to) end
---@param a Vector2
---@param b Vector2
---@return number
function Vector2.Distance(a, b) end
---@param vector Vector2
---@param maxLength number
---@return Vector2
function Vector2.ClampMagnitude(vector, maxLength) end
---@param a Vector2
---@return number
function Vector2.SqrMagnitude(a) end
---@param lhs Vector2
---@param rhs Vector2
---@return Vector2
function Vector2.Min(lhs, rhs) end
---@param lhs Vector2
---@param rhs Vector2
---@return Vector2
function Vector2.Max(lhs, rhs) end
---@param current Vector2
---@param target Vector2
---@param currentVelocity Vector2&
---@param smoothTime number
---@param maxSpeed number
---@return Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end
---@param current Vector2
---@param target Vector2
---@param currentVelocity Vector2&
---@param smoothTime number
---@return Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime) end
---@param current Vector2
---@param target Vector2
---@param currentVelocity Vector2&
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime) end

---@class MaterialGlobalIlluminationFlags : Enum
---@field None number @[static]
---@field RealtimeEmissive number @[static]
---@field BakedEmissive number @[static]
---@field EmissiveIsBlack number @[static]
---@field AnyEmissive number @[static]
---@field value__ number
local MaterialGlobalIlluminationFlags = {}

---@class Vector4
---@field zero Vector4 @[static]
---@field one Vector4 @[static]
---@field positiveInfinity Vector4 @[static]
---@field negativeInfinity Vector4 @[static]
---@field kEpsilon number @[static]
---@field Item number
---@field normalized Vector4
---@field magnitude number
---@field sqrMagnitude number
---@field x number
---@field y number
---@field z number
---@field w number
local Vector4 = {}
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function Vector4:Set(newX, newY, newZ, newW) end
---@param scale Vector4
function Vector4:Scale(scale) end
---@return number
function Vector4:GetHashCode() end
---@param other Object
---@return boolean
function Vector4:Equals(other) end
---@param other Vector4
---@return boolean
function Vector4:Equals(other) end
function Vector4:Normalize() end
---@return string
function Vector4:ToString() end
---@param format string
---@return string
function Vector4:ToString(format) end
---@return number
function Vector4:SqrMagnitude() end
---@param a Vector4
---@param b Vector4
---@param t number
---@return Vector4
function Vector4.Lerp(a, b, t) end
---@param a Vector4
---@param b Vector4
---@param t number
---@return Vector4
function Vector4.LerpUnclamped(a, b, t) end
---@param current Vector4
---@param target Vector4
---@param maxDistanceDelta number
---@return Vector4
function Vector4.MoveTowards(current, target, maxDistanceDelta) end
---@param a Vector4
---@param b Vector4
---@return Vector4
function Vector4.Scale(a, b) end
---@param a Vector4
---@return Vector4
function Vector4.Normalize(a) end
---@param a Vector4
---@param b Vector4
---@return number
function Vector4.Dot(a, b) end
---@param a Vector4
---@param b Vector4
---@return Vector4
function Vector4.Project(a, b) end
---@param a Vector4
---@param b Vector4
---@return number
function Vector4.Distance(a, b) end
---@param a Vector4
---@return number
function Vector4.Magnitude(a) end
---@param lhs Vector4
---@param rhs Vector4
---@return Vector4
function Vector4.Min(lhs, rhs) end
---@param lhs Vector4
---@param rhs Vector4
---@return Vector4
function Vector4.Max(lhs, rhs) end
---@param a Vector4
---@return number
function Vector4.SqrMagnitude(a) end

---@class LightShape : Enum
---@field Cone number @[static]
---@field Pyramid number @[static]
---@field Box number @[static]
---@field value__ number
local LightShape = {}

---@class Flare : Object
local Flare = {}

---@class LightBakingOutput
---@field probeOcclusionLightIndex number
---@field occlusionMaskChannel number
---@field lightmapBakeType number
---@field mixedLightingMode number
---@field isBaked boolean
local LightBakingOutput = {}

---@class LightShadowCasterMode : Enum
---@field Default number @[static]
---@field NonLightmappedOnly number @[static]
---@field Everything number @[static]
---@field value__ number
local LightShadowCasterMode = {}

---@class LightShadows : Enum
---@field None number @[static]
---@field Hard number @[static]
---@field Soft number @[static]
---@field value__ number
local LightShadows = {}

---@class LightShadowResolution : Enum
---@field FromQualitySettings number @[static]
---@field Low number @[static]
---@field Medium number @[static]
---@field High number @[static]
---@field VeryHigh number @[static]
---@field value__ number
local LightShadowResolution = {}

---@class LightRenderMode : Enum
---@field Auto number @[static]
---@field ForcePixel number @[static]
---@field ForceVertex number @[static]
---@field value__ number
local LightRenderMode = {}

---@class RigidbodyConstraints : Enum
---@field None number @[static]
---@field FreezePositionX number @[static]
---@field FreezePositionY number @[static]
---@field FreezePositionZ number @[static]
---@field FreezeRotationX number @[static]
---@field FreezeRotationY number @[static]
---@field FreezeRotationZ number @[static]
---@field FreezePosition number @[static]
---@field FreezeRotation number @[static]
---@field FreezeAll number @[static]
---@field value__ number
local RigidbodyConstraints = {}

---@class CollisionDetectionMode : Enum
---@field Discrete number @[static]
---@field Continuous number @[static]
---@field ContinuousDynamic number @[static]
---@field ContinuousSpeculative number @[static]
---@field value__ number
local CollisionDetectionMode = {}

---@class RigidbodyInterpolation : Enum
---@field None number @[static]
---@field Interpolate number @[static]
---@field Extrapolate number @[static]
---@field value__ number
local RigidbodyInterpolation = {}

---@class RaycastHit
---@field collider Collider
---@field point Vector3
---@field normal Vector3
---@field barycentricCoordinate Vector3
---@field distance number
---@field triangleIndex number
---@field textureCoord Vector2
---@field textureCoord2 Vector2
---@field transform Transform
---@field rigidbody Rigidbody
---@field lightmapCoord Vector2
local RaycastHit = {}

---@class RenderingPath : Enum
---@field UsePlayerSettings number @[static]
---@field VertexLit number @[static]
---@field Forward number @[static]
---@field DeferredLighting number @[static]
---@field DeferredShading number @[static]
---@field value__ number
local RenderingPath = {}

---@class OpaqueSortMode : Enum
---@field Default number @[static]
---@field FrontToBack number @[static]
---@field NoDistanceSort number @[static]
---@field value__ number
local OpaqueSortMode = {}

---@class TransparencySortMode : Enum
---@field Default number @[static]
---@field Perspective number @[static]
---@field Orthographic number @[static]
---@field CustomAxis number @[static]
---@field value__ number
local TransparencySortMode = {}

---@class CameraType : Enum
---@field Game number @[static]
---@field SceneView number @[static]
---@field Preview number @[static]
---@field VR number @[static]
---@field Reflection number @[static]
---@field value__ number
local CameraType = {}

---@class DepthTextureMode : Enum
---@field None number @[static]
---@field Depth number @[static]
---@field DepthNormals number @[static]
---@field MotionVectors number @[static]
---@field value__ number
local DepthTextureMode = {}

---@class GateFitMode : Enum
---@field Vertical number @[static]
---@field Horizontal number @[static]
---@field Fill number @[static]
---@field Overscan number @[static]
---@field None number @[static]
---@field value__ number
local GateFitMode = {}

---@class Rect
---@field zero Rect @[static]
---@field x number
---@field y number
---@field position Vector2
---@field center Vector2
---@field min Vector2
---@field max Vector2
---@field width number
---@field height number
---@field size Vector2
---@field xMin number
---@field yMin number
---@field xMax number
---@field yMax number
local Rect = {}
---@param x number
---@param y number
---@param width number
---@param height number
function Rect:Set(x, y, width, height) end
---@param point Vector2
---@return boolean
function Rect:Contains(point) end
---@param point Vector3
---@return boolean
function Rect:Contains(point) end
---@param point Vector3
---@param allowInverse boolean
---@return boolean
function Rect:Contains(point, allowInverse) end
---@param other Rect
---@return boolean
function Rect:Overlaps(other) end
---@param other Rect
---@param allowInverse boolean
---@return boolean
function Rect:Overlaps(other, allowInverse) end
---@return number
function Rect:GetHashCode() end
---@param other Object
---@return boolean
function Rect:Equals(other) end
---@param other Rect
---@return boolean
function Rect:Equals(other) end
---@return string
function Rect:ToString() end
---@param format string
---@return string
function Rect:ToString(format) end
---@param xmin number
---@param ymin number
---@param xmax number
---@param ymax number
---@return Rect
function Rect.MinMaxRect(xmin, ymin, xmax, ymax) end
---@param rectangle Rect
---@param normalizedRectCoordinates Vector2
---@return Vector2
function Rect.NormalizedToPoint(rectangle, normalizedRectCoordinates) end
---@param rectangle Rect
---@param point Vector2
---@return Vector2
function Rect.PointToNormalized(rectangle, point) end

---@class Scene
---@field handle number
---@field path string
---@field name string
---@field isLoaded boolean
---@field buildIndex number
---@field isDirty boolean
---@field rootCount number
---@field isSubScene boolean
local Scene = {}
---@return boolean
function Scene:IsValid() end
---@return GameObject[]
function Scene:GetRootGameObjects() end
---@param rootGameObjects List<GameObject>
function Scene:GetRootGameObjects(rootGameObjects) end
---@return number
function Scene:GetHashCode() end
---@param other Object
---@return boolean
function Scene:Equals(other) end

---@class StereoTargetEyeMask : Enum
---@field None number @[static]
---@field Left number @[static]
---@field Right number @[static]
---@field Both number @[static]
---@field value__ number
local StereoTargetEyeMask = {}

---@class MonoOrStereoscopicEye : Enum
---@field Left number @[static]
---@field Right number @[static]
---@field Mono number @[static]
---@field value__ number
local MonoOrStereoscopicEye = {}

---@class Ray
---@field origin Vector3
---@field direction Vector3
local Ray = {}
---@param distance number
---@return Vector3
function Ray:GetPoint(distance) end
---@return string
function Ray:ToString() end
---@param format string
---@return string
function Ray:ToString(format) end

---@class AudioMixerGroup : Object
---@field audioMixer AudioMixer
local AudioMixerGroup = {}

---@class AudioVelocityUpdateMode : Enum
---@field Auto number @[static]
---@field Fixed number @[static]
---@field Dynamic number @[static]
---@field value__ number
local AudioVelocityUpdateMode = {}

---@class AudioRolloffMode : Enum
---@field Logarithmic number @[static]
---@field Linear number @[static]
---@field Custom number @[static]
---@field value__ number
local AudioRolloffMode = {}

---@class AnimationCurve
---@field keys Keyframe[]
---@field Item Keyframe
---@field length number
---@field preWrapMode number
---@field postWrapMode number
local AnimationCurve = {}
---@param time number
---@return number
function AnimationCurve:Evaluate(time) end
---@param time number
---@param value number
---@return number
function AnimationCurve:AddKey(time, value) end
---@param key Keyframe
---@return number
function AnimationCurve:AddKey(key) end
---@param index number
---@param key Keyframe
---@return number
function AnimationCurve:MoveKey(index, key) end
---@param index number
function AnimationCurve:RemoveKey(index) end
---@param index number
---@param weight number
function AnimationCurve:SmoothTangents(index, weight) end
---@param o Object
---@return boolean
function AnimationCurve:Equals(o) end
---@param other AnimationCurve
---@return boolean
function AnimationCurve:Equals(other) end
---@return number
function AnimationCurve:GetHashCode() end
---@param timeStart number
---@param timeEnd number
---@param value number
---@return AnimationCurve
function AnimationCurve.Constant(timeStart, timeEnd, value) end
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return AnimationCurve
function AnimationCurve.Linear(timeStart, valueStart, timeEnd, valueEnd) end
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return AnimationCurve
function AnimationCurve.EaseInOut(timeStart, valueStart, timeEnd, valueEnd) end

---@class AudioBehaviour : Behaviour
local AudioBehaviour = {}

---@class Coroutine : YieldInstruction
local Coroutine = {}

---@class ApplicationInstallMode : Enum
---@field Unknown number @[static]
---@field Store number @[static]
---@field DeveloperBuild number @[static]
---@field Adhoc number @[static]
---@field Enterprise number @[static]
---@field Editor number @[static]
---@field value__ number
local ApplicationInstallMode = {}

---@class ApplicationSandboxType : Enum
---@field Unknown number @[static]
---@field NotSandboxed number @[static]
---@field Sandboxed number @[static]
---@field SandboxBroken number @[static]
---@field value__ number
local ApplicationSandboxType = {}

---@class ThreadPriority : Enum
---@field Low number @[static]
---@field BelowNormal number @[static]
---@field Normal number @[static]
---@field High number @[static]
---@field value__ number
local ThreadPriority = {}

---@class RuntimePlatform : Enum
---@field OSXEditor number @[static]
---@field OSXPlayer number @[static]
---@field WindowsPlayer number @[static]
---@field WindowsEditor number @[static]
---@field IPhonePlayer number @[static]
---@field Android number @[static]
---@field LinuxPlayer number @[static]
---@field LinuxEditor number @[static]
---@field WebGLPlayer number @[static]
---@field WSAPlayerX86 number @[static]
---@field WSAPlayerX64 number @[static]
---@field WSAPlayerARM number @[static]
---@field PS4 number @[static]
---@field XboxOne number @[static]
---@field tvOS number @[static]
---@field Switch number @[static]
---@field Lumin number @[static]
---@field Stadia number @[static]
---@field CloudRendering number @[static]
---@field value__ number
local RuntimePlatform = {}

---@class SystemLanguage : Enum
---@field Afrikaans number @[static]
---@field Arabic number @[static]
---@field Basque number @[static]
---@field Belarusian number @[static]
---@field Bulgarian number @[static]
---@field Catalan number @[static]
---@field Chinese number @[static]
---@field Czech number @[static]
---@field Danish number @[static]
---@field Dutch number @[static]
---@field English number @[static]
---@field Estonian number @[static]
---@field Faroese number @[static]
---@field Finnish number @[static]
---@field French number @[static]
---@field German number @[static]
---@field Greek number @[static]
---@field Hebrew number @[static]
---@field Icelandic number @[static]
---@field Indonesian number @[static]
---@field Italian number @[static]
---@field Japanese number @[static]
---@field Korean number @[static]
---@field Latvian number @[static]
---@field Lithuanian number @[static]
---@field Norwegian number @[static]
---@field Polish number @[static]
---@field Portuguese number @[static]
---@field Romanian number @[static]
---@field Russian number @[static]
---@field SerboCroatian number @[static]
---@field Slovak number @[static]
---@field Slovenian number @[static]
---@field Spanish number @[static]
---@field Swedish number @[static]
---@field Thai number @[static]
---@field Turkish number @[static]
---@field Ukrainian number @[static]
---@field Vietnamese number @[static]
---@field ChineseSimplified number @[static]
---@field ChineseTraditional number @[static]
---@field Unknown number @[static]
---@field Hungarian number @[static]
---@field value__ number
local SystemLanguage = {}

---@class NetworkReachability : Enum
---@field NotReachable number @[static]
---@field ReachableViaCarrierDataNetwork number @[static]
---@field ReachableViaLocalAreaNetwork number @[static]
---@field value__ number
local NetworkReachability = {}

---@class StackTraceLogType : Enum
---@field None number @[static]
---@field ScriptOnly number @[static]
---@field Full number @[static]
---@field value__ number
local StackTraceLogType = {}

---@class PhysicsScene
local PhysicsScene = {}
---@return string
function PhysicsScene:ToString() end
---@return number
function PhysicsScene:GetHashCode() end
---@param other Object
---@return boolean
function PhysicsScene:Equals(other) end
---@param other PhysicsScene
---@return boolean
function PhysicsScene:Equals(other) end
---@return boolean
function PhysicsScene:IsValid() end
---@return boolean
function PhysicsScene:IsEmpty() end
---@param step number
function PhysicsScene:Simulate(step) end
---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function PhysicsScene:Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function PhysicsScene:Raycast(origin, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param direction Vector3
---@param raycastHits RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:Raycast(origin, direction, raycastHits, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function PhysicsScene:CapsuleCast(point1, point2, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param point1 Vector3
---@param point2 Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:CapsuleCast(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param point0 Vector3
---@param point1 Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:OverlapCapsule(point0, point1, radius, results, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function PhysicsScene:SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end
---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param results RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:SphereCast(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param position Vector3
---@param radius number
---@param results Collider[]
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:OverlapSphere(position, radius, results, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return boolean
function PhysicsScene:BoxCast(center, halfExtents, direction, hitInfo, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param hitInfo RaycastHit&
---@return boolean
function PhysicsScene:BoxCast(center, halfExtents, direction, hitInfo) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@param orientation Quaternion
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:OverlapBox(center, halfExtents, results, orientation, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param results Collider[]
---@return number
function PhysicsScene:OverlapBox(center, halfExtents, results) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@param orientation Quaternion
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction number
---@return number
function PhysicsScene:BoxCast(center, halfExtents, direction, results, orientation, maxDistance, layerMask, queryTriggerInteraction) end
---@param center Vector3
---@param halfExtents Vector3
---@param direction Vector3
---@param results RaycastHit[]
---@return number
function PhysicsScene:BoxCast(center, halfExtents, direction, results) end

---@class Bounds
---@field center Vector3
---@field size Vector3
---@field extents Vector3
---@field min Vector3
---@field max Vector3
local Bounds = {}
---@return number
function Bounds:GetHashCode() end
---@param other Object
---@return boolean
function Bounds:Equals(other) end
---@param other Bounds
---@return boolean
function Bounds:Equals(other) end
---@param min Vector3
---@param max Vector3
function Bounds:SetMinMax(min, max) end
---@param point Vector3
function Bounds:Encapsulate(point) end
---@param bounds Bounds
function Bounds:Encapsulate(bounds) end
---@param amount number
function Bounds:Expand(amount) end
---@param amount Vector3
function Bounds:Expand(amount) end
---@param bounds Bounds
---@return boolean
function Bounds:Intersects(bounds) end
---@param ray Ray
---@return boolean
function Bounds:IntersectRay(ray) end
---@param ray Ray
---@param distance Single&
---@return boolean
function Bounds:IntersectRay(ray, distance) end
---@return string
function Bounds:ToString() end
---@param format string
---@return string
function Bounds:ToString(format) end
---@param point Vector3
---@return boolean
function Bounds:Contains(point) end
---@param point Vector3
---@return number
function Bounds:SqrDistance(point) end
---@param point Vector3
---@return Vector3
function Bounds:ClosestPoint(point) end

---@class PhysicMaterial : Object
---@field bounciness number
---@field dynamicFriction number
---@field staticFriction number
---@field frictionCombine number
---@field bounceCombine number
local PhysicMaterial = {}

---@class AnisotropicFiltering : Enum
---@field Disable number @[static]
---@field Enable number @[static]
---@field ForceEnable number @[static]
---@field value__ number
local AnisotropicFiltering = {}

---@class GraphicsFormat : Enum
---@field None number @[static]
---@field R8_SRGB number @[static]
---@field R8G8_SRGB number @[static]
---@field R8G8B8_SRGB number @[static]
---@field R8G8B8A8_SRGB number @[static]
---@field R8_UNorm number @[static]
---@field R8G8_UNorm number @[static]
---@field R8G8B8_UNorm number @[static]
---@field R8G8B8A8_UNorm number @[static]
---@field R8_SNorm number @[static]
---@field R8G8_SNorm number @[static]
---@field R8G8B8_SNorm number @[static]
---@field R8G8B8A8_SNorm number @[static]
---@field R8_UInt number @[static]
---@field R8G8_UInt number @[static]
---@field R8G8B8_UInt number @[static]
---@field R8G8B8A8_UInt number @[static]
---@field R8_SInt number @[static]
---@field R8G8_SInt number @[static]
---@field R8G8B8_SInt number @[static]
---@field R8G8B8A8_SInt number @[static]
---@field R16_UNorm number @[static]
---@field R16G16_UNorm number @[static]
---@field R16G16B16_UNorm number @[static]
---@field R16G16B16A16_UNorm number @[static]
---@field R16_SNorm number @[static]
---@field R16G16_SNorm number @[static]
---@field R16G16B16_SNorm number @[static]
---@field R16G16B16A16_SNorm number @[static]
---@field R16_UInt number @[static]
---@field R16G16_UInt number @[static]
---@field R16G16B16_UInt number @[static]
---@field R16G16B16A16_UInt number @[static]
---@field R16_SInt number @[static]
---@field R16G16_SInt number @[static]
---@field R16G16B16_SInt number @[static]
---@field R16G16B16A16_SInt number @[static]
---@field R32_UInt number @[static]
---@field R32G32_UInt number @[static]
---@field R32G32B32_UInt number @[static]
---@field R32G32B32A32_UInt number @[static]
---@field R32_SInt number @[static]
---@field R32G32_SInt number @[static]
---@field R32G32B32_SInt number @[static]
---@field R32G32B32A32_SInt number @[static]
---@field R16_SFloat number @[static]
---@field R16G16_SFloat number @[static]
---@field R16G16B16_SFloat number @[static]
---@field R16G16B16A16_SFloat number @[static]
---@field R32_SFloat number @[static]
---@field R32G32_SFloat number @[static]
---@field R32G32B32_SFloat number @[static]
---@field R32G32B32A32_SFloat number @[static]
---@field B8G8R8_SRGB number @[static]
---@field B8G8R8A8_SRGB number @[static]
---@field B8G8R8_UNorm number @[static]
---@field B8G8R8A8_UNorm number @[static]
---@field B8G8R8_SNorm number @[static]
---@field B8G8R8A8_SNorm number @[static]
---@field B8G8R8_UInt number @[static]
---@field B8G8R8A8_UInt number @[static]
---@field B8G8R8_SInt number @[static]
---@field B8G8R8A8_SInt number @[static]
---@field R4G4B4A4_UNormPack16 number @[static]
---@field B4G4R4A4_UNormPack16 number @[static]
---@field R5G6B5_UNormPack16 number @[static]
---@field B5G6R5_UNormPack16 number @[static]
---@field R5G5B5A1_UNormPack16 number @[static]
---@field B5G5R5A1_UNormPack16 number @[static]
---@field A1R5G5B5_UNormPack16 number @[static]
---@field E5B9G9R9_UFloatPack32 number @[static]
---@field B10G11R11_UFloatPack32 number @[static]
---@field A2B10G10R10_UNormPack32 number @[static]
---@field A2B10G10R10_UIntPack32 number @[static]
---@field A2B10G10R10_SIntPack32 number @[static]
---@field A2R10G10B10_UNormPack32 number @[static]
---@field A2R10G10B10_UIntPack32 number @[static]
---@field A2R10G10B10_SIntPack32 number @[static]
---@field A2R10G10B10_XRSRGBPack32 number @[static]
---@field A2R10G10B10_XRUNormPack32 number @[static]
---@field R10G10B10_XRSRGBPack32 number @[static]
---@field R10G10B10_XRUNormPack32 number @[static]
---@field A10R10G10B10_XRSRGBPack32 number @[static]
---@field A10R10G10B10_XRUNormPack32 number @[static]
---@field RGBA_DXT1_SRGB number @[static]
---@field RGBA_DXT1_UNorm number @[static]
---@field RGBA_DXT3_SRGB number @[static]
---@field RGBA_DXT3_UNorm number @[static]
---@field RGBA_DXT5_SRGB number @[static]
---@field RGBA_DXT5_UNorm number @[static]
---@field R_BC4_UNorm number @[static]
---@field R_BC4_SNorm number @[static]
---@field RG_BC5_UNorm number @[static]
---@field RG_BC5_SNorm number @[static]
---@field RGB_BC6H_UFloat number @[static]
---@field RGB_BC6H_SFloat number @[static]
---@field RGBA_BC7_SRGB number @[static]
---@field RGBA_BC7_UNorm number @[static]
---@field RGB_PVRTC_2Bpp_SRGB number @[static]
---@field RGB_PVRTC_2Bpp_UNorm number @[static]
---@field RGB_PVRTC_4Bpp_SRGB number @[static]
---@field RGB_PVRTC_4Bpp_UNorm number @[static]
---@field RGBA_PVRTC_2Bpp_SRGB number @[static]
---@field RGBA_PVRTC_2Bpp_UNorm number @[static]
---@field RGBA_PVRTC_4Bpp_SRGB number @[static]
---@field RGBA_PVRTC_4Bpp_UNorm number @[static]
---@field RGB_ETC_UNorm number @[static]
---@field RGB_ETC2_SRGB number @[static]
---@field RGB_ETC2_UNorm number @[static]
---@field RGB_A1_ETC2_SRGB number @[static]
---@field RGB_A1_ETC2_UNorm number @[static]
---@field RGBA_ETC2_SRGB number @[static]
---@field RGBA_ETC2_UNorm number @[static]
---@field R_EAC_UNorm number @[static]
---@field R_EAC_SNorm number @[static]
---@field RG_EAC_UNorm number @[static]
---@field RG_EAC_SNorm number @[static]
---@field RGBA_ASTC4X4_SRGB number @[static]
---@field RGBA_ASTC4X4_UNorm number @[static]
---@field RGBA_ASTC5X5_SRGB number @[static]
---@field RGBA_ASTC5X5_UNorm number @[static]
---@field RGBA_ASTC6X6_SRGB number @[static]
---@field RGBA_ASTC6X6_UNorm number @[static]
---@field RGBA_ASTC8X8_SRGB number @[static]
---@field RGBA_ASTC8X8_UNorm number @[static]
---@field RGBA_ASTC10X10_SRGB number @[static]
---@field RGBA_ASTC10X10_UNorm number @[static]
---@field RGBA_ASTC12X12_SRGB number @[static]
---@field RGBA_ASTC12X12_UNorm number @[static]
---@field value__ number
local GraphicsFormat = {}

---@class TextureDimension : Enum
---@field Unknown number @[static]
---@field None number @[static]
---@field Any number @[static]
---@field Tex2D number @[static]
---@field Tex3D number @[static]
---@field Cube number @[static]
---@field Tex2DArray number @[static]
---@field CubeArray number @[static]
---@field value__ number
local TextureDimension = {}

---@class TextureWrapMode : Enum
---@field Repeat number @[static]
---@field Clamp number @[static]
---@field Mirror number @[static]
---@field MirrorOnce number @[static]
---@field value__ number
local TextureWrapMode = {}

---@class FilterMode : Enum
---@field Point number @[static]
---@field Bilinear number @[static]
---@field Trilinear number @[static]
---@field value__ number
local FilterMode = {}

---@class IntPtr
---@field Size number @[static]
---@field Zero IntPtr @[static]
local IntPtr = {}
---@param obj Object
---@return boolean
function IntPtr:Equals(obj) end
---@return number
function IntPtr:GetHashCode() end
---@return number
function IntPtr:ToInt32() end
---@return number
function IntPtr:ToInt64() end
---@return Void*
function IntPtr:ToPointer() end
---@return string
function IntPtr:ToString() end
---@param format string
---@return string
function IntPtr:ToString(format) end
---@param pointer IntPtr
---@param offset number
---@return IntPtr
function IntPtr.Add(pointer, offset) end
---@param pointer IntPtr
---@param offset number
---@return IntPtr
function IntPtr.Subtract(pointer, offset) end

---@class TextureFormat : Enum
---@field Alpha8 number @[static]
---@field ARGB4444 number @[static]
---@field RGB24 number @[static]
---@field RGBA32 number @[static]
---@field ARGB32 number @[static]
---@field RGB565 number @[static]
---@field R16 number @[static]
---@field DXT1 number @[static]
---@field DXT5 number @[static]
---@field RGBA4444 number @[static]
---@field BGRA32 number @[static]
---@field RHalf number @[static]
---@field RGHalf number @[static]
---@field RGBAHalf number @[static]
---@field RFloat number @[static]
---@field RGFloat number @[static]
---@field RGBAFloat number @[static]
---@field YUY2 number @[static]
---@field RGB9e5Float number @[static]
---@field BC4 number @[static]
---@field BC5 number @[static]
---@field BC6H number @[static]
---@field BC7 number @[static]
---@field PVRTC_RGB2 number @[static]
---@field PVRTC_RGBA2 number @[static]
---@field PVRTC_RGB4 number @[static]
---@field PVRTC_RGBA4 number @[static]
---@field ETC_RGB4 number @[static]
---@field EAC_R number @[static]
---@field EAC_R_SIGNED number @[static]
---@field EAC_RG number @[static]
---@field EAC_RG_SIGNED number @[static]
---@field ETC2_RGB number @[static]
---@field ETC2_RGBA1 number @[static]
---@field ETC2_RGBA8 number @[static]
---@field ASTC_4x4 number @[static]
---@field ASTC_5x5 number @[static]
---@field ASTC_6x6 number @[static]
---@field ASTC_8x8 number @[static]
---@field ASTC_10x10 number @[static]
---@field ASTC_12x12 number @[static]
---@field RG16 number @[static]
---@field R8 number @[static]
---@field ETC_RGB4Crunched number @[static]
---@field ETC2_RGBA8Crunched number @[static]
---@field ASTC_HDR_4x4 number @[static]
---@field ASTC_HDR_5x5 number @[static]
---@field ASTC_HDR_6x6 number @[static]
---@field ASTC_HDR_8x8 number @[static]
---@field ASTC_HDR_10x10 number @[static]
---@field ASTC_HDR_12x12 number @[static]
---@field ASTC_RGB_4x4 number @[static]
---@field ASTC_RGB_5x5 number @[static]
---@field ASTC_RGB_6x6 number @[static]
---@field ASTC_RGB_8x8 number @[static]
---@field ASTC_RGB_10x10 number @[static]
---@field ASTC_RGB_12x12 number @[static]
---@field ASTC_RGBA_4x4 number @[static]
---@field ASTC_RGBA_5x5 number @[static]
---@field ASTC_RGBA_6x6 number @[static]
---@field ASTC_RGBA_8x8 number @[static]
---@field ASTC_RGBA_10x10 number @[static]
---@field ASTC_RGBA_12x12 number @[static]
---@field value__ number
local TextureFormat = {}

---@class Color32
---@field Item number
---@field r number
---@field g number
---@field b number
---@field a number
local Color32 = {}
---@return string
function Color32:ToString() end
---@param format string
---@return string
function Color32:ToString(format) end
---@param a Color32
---@param b Color32
---@param t number
---@return Color32
function Color32.Lerp(a, b, t) end
---@param a Color32
---@param b Color32
---@param t number
---@return Color32
function Color32.LerpUnclamped(a, b, t) end

---@class ShaderTagId
---@field none ShaderTagId @[static]
---@field name string
local ShaderTagId = {}
---@param obj Object
---@return boolean
function ShaderTagId:Equals(obj) end
---@param other ShaderTagId
---@return boolean
function ShaderTagId:Equals(other) end
---@return number
function ShaderTagId:GetHashCode() end

---@class ShaderPropertyType : Enum
---@field Color number @[static]
---@field Vector number @[static]
---@field Float number @[static]
---@field Range number @[static]
---@field Texture number @[static]
---@field value__ number
local ShaderPropertyType = {}

---@class ShaderPropertyFlags : Enum
---@field None number @[static]
---@field HideInInspector number @[static]
---@field PerRendererData number @[static]
---@field NoScaleOffset number @[static]
---@field Normal number @[static]
---@field HDR number @[static]
---@field Gamma number @[static]
---@field NonModifiableTextureData number @[static]
---@field MainTexture number @[static]
---@field MainColor number @[static]
---@field value__ number
local ShaderPropertyFlags = {}

---@class ShadowCastingMode : Enum
---@field Off number @[static]
---@field On number @[static]
---@field TwoSided number @[static]
---@field ShadowsOnly number @[static]
---@field value__ number
local ShadowCastingMode = {}

---@class MotionVectorGenerationMode : Enum
---@field Camera number @[static]
---@field Object number @[static]
---@field ForceNoMotion number @[static]
---@field value__ number
local MotionVectorGenerationMode = {}

---@class LightProbeUsage : Enum
---@field Off number @[static]
---@field BlendProbes number @[static]
---@field UseProxyVolume number @[static]
---@field CustomProvided number @[static]
---@field value__ number
local LightProbeUsage = {}

---@class ReflectionProbeUsage : Enum
---@field Off number @[static]
---@field BlendProbes number @[static]
---@field BlendProbesAndSkybox number @[static]
---@field Simple number @[static]
---@field value__ number
local ReflectionProbeUsage = {}

---@class RayTracingMode : Enum
---@field Off number @[static]
---@field Static number @[static]
---@field DynamicTransform number @[static]
---@field DynamicGeometry number @[static]
---@field value__ number
local RayTracingMode = {}

---@class Resolution
---@field width number
---@field height number
---@field refreshRate number
local Resolution = {}
---@return string
function Resolution:ToString() end

---@class FullScreenMode : Enum
---@field ExclusiveFullScreen number @[static]
---@field FullScreenWindow number @[static]
---@field MaximizedWindow number @[static]
---@field Windowed number @[static]
---@field value__ number
local FullScreenMode = {}

---@class ScreenOrientation : Enum
---@field Portrait number @[static]
---@field PortraitUpsideDown number @[static]
---@field LandscapeLeft number @[static]
---@field LandscapeRight number @[static]
---@field AutoRotation number @[static]
---@field Landscape number @[static]
---@field value__ number
local ScreenOrientation = {}

---@class AudioClipLoadType : Enum
---@field DecompressOnLoad number @[static]
---@field CompressedInMemory number @[static]
---@field Streaming number @[static]
---@field value__ number
local AudioClipLoadType = {}

---@class AudioDataLoadState : Enum
---@field Unloaded number @[static]
---@field Loading number @[static]
---@field Loaded number @[static]
---@field Failed number @[static]
---@field value__ number
local AudioDataLoadState = {}

---@class AssetBundleRequest : AsyncOperation
---@field asset Object
---@field allAssets Object[]
local AssetBundleRequest = {}

---@class AssetBundleCreateRequest : AsyncOperation
---@field assetBundle AssetBundle
local AssetBundleCreateRequest = {}

---@class AssetBundleRecompressOperation : AsyncOperation
---@field humanReadableResult string
---@field inputPath string
---@field outputPath string
---@field result number
---@field success boolean
local AssetBundleRecompressOperation = {}

---@class MainModule
---@field duration number
---@field loop boolean
---@field prewarm boolean
---@field startDelay MinMaxCurve
---@field startDelayMultiplier number
---@field startLifetime MinMaxCurve
---@field startLifetimeMultiplier number
---@field startSpeed MinMaxCurve
---@field startSpeedMultiplier number
---@field startSize3D boolean
---@field startSize MinMaxCurve
---@field startSizeMultiplier number
---@field startSizeX MinMaxCurve
---@field startSizeXMultiplier number
---@field startSizeY MinMaxCurve
---@field startSizeYMultiplier number
---@field startSizeZ MinMaxCurve
---@field startSizeZMultiplier number
---@field startRotation3D boolean
---@field startRotation MinMaxCurve
---@field startRotationMultiplier number
---@field startRotationX MinMaxCurve
---@field startRotationXMultiplier number
---@field startRotationY MinMaxCurve
---@field startRotationYMultiplier number
---@field startRotationZ MinMaxCurve
---@field startRotationZMultiplier number
---@field flipRotation number
---@field startColor MinMaxGradient
---@field gravityModifier MinMaxCurve
---@field gravityModifierMultiplier number
---@field simulationSpace number
---@field customSimulationSpace Transform
---@field simulationSpeed number
---@field useUnscaledTime boolean
---@field scalingMode number
---@field playOnAwake boolean
---@field maxParticles number
---@field emitterVelocityMode number
---@field stopAction number
---@field ringBufferMode number
---@field ringBufferLoopRange Vector2
---@field cullingMode number
local MainModule = {}

---@class EmissionModule
---@field enabled boolean
---@field rateOverTime MinMaxCurve
---@field rateOverTimeMultiplier number
---@field rateOverDistance MinMaxCurve
---@field rateOverDistanceMultiplier number
---@field burstCount number
local EmissionModule = {}
---@param bursts Burst[]
function EmissionModule:SetBursts(bursts) end
---@param bursts Burst[]
---@param size number
function EmissionModule:SetBursts(bursts, size) end
---@param bursts Burst[]
---@return number
function EmissionModule:GetBursts(bursts) end
---@param index number
---@param burst Burst
function EmissionModule:SetBurst(index, burst) end
---@param index number
---@return Burst
function EmissionModule:GetBurst(index) end

---@class ShapeModule
---@field enabled boolean
---@field shapeType number
---@field randomDirectionAmount number
---@field sphericalDirectionAmount number
---@field randomPositionAmount number
---@field alignToDirection boolean
---@field radius number
---@field radiusMode number
---@field radiusSpread number
---@field radiusSpeed MinMaxCurve
---@field radiusSpeedMultiplier number
---@field radiusThickness number
---@field angle number
---@field length number
---@field boxThickness Vector3
---@field meshShapeType number
---@field mesh Mesh
---@field meshRenderer MeshRenderer
---@field skinnedMeshRenderer SkinnedMeshRenderer
---@field sprite Sprite
---@field spriteRenderer SpriteRenderer
---@field useMeshMaterialIndex boolean
---@field meshMaterialIndex number
---@field useMeshColors boolean
---@field normalOffset number
---@field meshSpawnMode number
---@field meshSpawnSpread number
---@field meshSpawnSpeed MinMaxCurve
---@field meshSpawnSpeedMultiplier number
---@field arc number
---@field arcMode number
---@field arcSpread number
---@field arcSpeed MinMaxCurve
---@field arcSpeedMultiplier number
---@field donutRadius number
---@field position Vector3
---@field rotation Vector3
---@field scale Vector3
---@field texture Texture2D
---@field textureClipChannel number
---@field textureClipThreshold number
---@field textureColorAffectsParticles boolean
---@field textureAlphaAffectsParticles boolean
---@field textureBilinearFiltering boolean
---@field textureUVChannel number
local ShapeModule = {}

---@class VelocityOverLifetimeModule
---@field enabled boolean
---@field x MinMaxCurve
---@field y MinMaxCurve
---@field z MinMaxCurve
---@field xMultiplier number
---@field yMultiplier number
---@field zMultiplier number
---@field orbitalX MinMaxCurve
---@field orbitalY MinMaxCurve
---@field orbitalZ MinMaxCurve
---@field orbitalXMultiplier number
---@field orbitalYMultiplier number
---@field orbitalZMultiplier number
---@field orbitalOffsetX MinMaxCurve
---@field orbitalOffsetY MinMaxCurve
---@field orbitalOffsetZ MinMaxCurve
---@field orbitalOffsetXMultiplier number
---@field orbitalOffsetYMultiplier number
---@field orbitalOffsetZMultiplier number
---@field radial MinMaxCurve
---@field radialMultiplier number
---@field speedModifier MinMaxCurve
---@field speedModifierMultiplier number
---@field space number
local VelocityOverLifetimeModule = {}

---@class LimitVelocityOverLifetimeModule
---@field enabled boolean
---@field limitX MinMaxCurve
---@field limitXMultiplier number
---@field limitY MinMaxCurve
---@field limitYMultiplier number
---@field limitZ MinMaxCurve
---@field limitZMultiplier number
---@field limit MinMaxCurve
---@field limitMultiplier number
---@field dampen number
---@field separateAxes boolean
---@field space number
---@field drag MinMaxCurve
---@field dragMultiplier number
---@field multiplyDragByParticleSize boolean
---@field multiplyDragByParticleVelocity boolean
local LimitVelocityOverLifetimeModule = {}

---@class InheritVelocityModule
---@field enabled boolean
---@field mode number
---@field curve MinMaxCurve
---@field curveMultiplier number
local InheritVelocityModule = {}

---@class ForceOverLifetimeModule
---@field enabled boolean
---@field x MinMaxCurve
---@field y MinMaxCurve
---@field z MinMaxCurve
---@field xMultiplier number
---@field yMultiplier number
---@field zMultiplier number
---@field space number
---@field randomized boolean
local ForceOverLifetimeModule = {}

---@class ColorOverLifetimeModule
---@field enabled boolean
---@field color MinMaxGradient
local ColorOverLifetimeModule = {}

---@class ColorBySpeedModule
---@field enabled boolean
---@field color MinMaxGradient
---@field range Vector2
local ColorBySpeedModule = {}

---@class SizeOverLifetimeModule
---@field enabled boolean
---@field size MinMaxCurve
---@field sizeMultiplier number
---@field x MinMaxCurve
---@field xMultiplier number
---@field y MinMaxCurve
---@field yMultiplier number
---@field z MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
local SizeOverLifetimeModule = {}

---@class SizeBySpeedModule
---@field enabled boolean
---@field size MinMaxCurve
---@field sizeMultiplier number
---@field x MinMaxCurve
---@field xMultiplier number
---@field y MinMaxCurve
---@field yMultiplier number
---@field z MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
---@field range Vector2
local SizeBySpeedModule = {}

---@class RotationOverLifetimeModule
---@field enabled boolean
---@field x MinMaxCurve
---@field xMultiplier number
---@field y MinMaxCurve
---@field yMultiplier number
---@field z MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
local RotationOverLifetimeModule = {}

---@class RotationBySpeedModule
---@field enabled boolean
---@field x MinMaxCurve
---@field xMultiplier number
---@field y MinMaxCurve
---@field yMultiplier number
---@field z MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
---@field range Vector2
local RotationBySpeedModule = {}

---@class ExternalForcesModule
---@field enabled boolean
---@field multiplier number
---@field multiplierCurve MinMaxCurve
---@field influenceFilter number
---@field influenceMask LayerMask
---@field influenceCount number
local ExternalForcesModule = {}
---@param field ParticleSystemForceField
---@return boolean
function ExternalForcesModule:IsAffectedBy(field) end
---@param field ParticleSystemForceField
function ExternalForcesModule:AddInfluence(field) end
---@param index number
function ExternalForcesModule:RemoveInfluence(index) end
---@param field ParticleSystemForceField
function ExternalForcesModule:RemoveInfluence(field) end
function ExternalForcesModule:RemoveAllInfluences() end
---@param index number
---@param field ParticleSystemForceField
function ExternalForcesModule:SetInfluence(index, field) end
---@param index number
---@return ParticleSystemForceField
function ExternalForcesModule:GetInfluence(index) end

---@class NoiseModule
---@field enabled boolean
---@field separateAxes boolean
---@field strength MinMaxCurve
---@field strengthMultiplier number
---@field strengthX MinMaxCurve
---@field strengthXMultiplier number
---@field strengthY MinMaxCurve
---@field strengthYMultiplier number
---@field strengthZ MinMaxCurve
---@field strengthZMultiplier number
---@field frequency number
---@field damping boolean
---@field octaveCount number
---@field octaveMultiplier number
---@field octaveScale number
---@field quality number
---@field scrollSpeed MinMaxCurve
---@field scrollSpeedMultiplier number
---@field remapEnabled boolean
---@field remap MinMaxCurve
---@field remapMultiplier number
---@field remapX MinMaxCurve
---@field remapXMultiplier number
---@field remapY MinMaxCurve
---@field remapYMultiplier number
---@field remapZ MinMaxCurve
---@field remapZMultiplier number
---@field positionAmount MinMaxCurve
---@field rotationAmount MinMaxCurve
---@field sizeAmount MinMaxCurve
local NoiseModule = {}

---@class CollisionModule
---@field enabled boolean
---@field type number
---@field mode number
---@field dampen MinMaxCurve
---@field dampenMultiplier number
---@field bounce MinMaxCurve
---@field bounceMultiplier number
---@field lifetimeLoss MinMaxCurve
---@field lifetimeLossMultiplier number
---@field minKillSpeed number
---@field maxKillSpeed number
---@field collidesWith LayerMask
---@field enableDynamicColliders boolean
---@field maxCollisionShapes number
---@field quality number
---@field voxelSize number
---@field radiusScale number
---@field sendCollisionMessages boolean
---@field colliderForce number
---@field multiplyColliderForceByCollisionAngle boolean
---@field multiplyColliderForceByParticleSpeed boolean
---@field multiplyColliderForceByParticleSize boolean
---@field maxPlaneCount number
local CollisionModule = {}
---@param index number
---@param transform Transform
function CollisionModule:SetPlane(index, transform) end
---@param index number
---@return Transform
function CollisionModule:GetPlane(index) end

---@class TriggerModule
---@field enabled boolean
---@field inside number
---@field outside number
---@field enter number
---@field exit number
---@field radiusScale number
---@field maxColliderCount number
local TriggerModule = {}
---@param index number
---@param collider Component
function TriggerModule:SetCollider(index, collider) end
---@param index number
---@return Component
function TriggerModule:GetCollider(index) end

---@class TextureSheetAnimationModule
---@field enabled boolean
---@field mode number
---@field timeMode number
---@field fps number
---@field numTilesX number
---@field numTilesY number
---@field animation number
---@field rowMode number
---@field frameOverTime MinMaxCurve
---@field frameOverTimeMultiplier number
---@field startFrame MinMaxCurve
---@field startFrameMultiplier number
---@field cycleCount number
---@field rowIndex number
---@field uvChannelMask number
---@field spriteCount number
---@field speedRange Vector2
local TextureSheetAnimationModule = {}
---@param sprite Sprite
function TextureSheetAnimationModule:AddSprite(sprite) end
---@param index number
function TextureSheetAnimationModule:RemoveSprite(index) end
---@param index number
---@param sprite Sprite
function TextureSheetAnimationModule:SetSprite(index, sprite) end
---@param index number
---@return Sprite
function TextureSheetAnimationModule:GetSprite(index) end

---@class LightsModule
---@field enabled boolean
---@field ratio number
---@field useRandomDistribution boolean
---@field light Light
---@field useParticleColor boolean
---@field sizeAffectsRange boolean
---@field alphaAffectsIntensity boolean
---@field range MinMaxCurve
---@field rangeMultiplier number
---@field intensity MinMaxCurve
---@field intensityMultiplier number
---@field maxLights number
local LightsModule = {}

---@class TrailModule
---@field enabled boolean
---@field mode number
---@field ratio number
---@field lifetime MinMaxCurve
---@field lifetimeMultiplier number
---@field minVertexDistance number
---@field textureMode number
---@field worldSpace boolean
---@field dieWithParticles boolean
---@field sizeAffectsWidth boolean
---@field sizeAffectsLifetime boolean
---@field inheritParticleColor boolean
---@field colorOverLifetime MinMaxGradient
---@field widthOverTrail MinMaxCurve
---@field widthOverTrailMultiplier number
---@field colorOverTrail MinMaxGradient
---@field generateLightingData boolean
---@field ribbonCount number
---@field shadowBias number
---@field splitSubEmitterRibbons boolean
---@field attachRibbonsToTransform boolean
local TrailModule = {}

---@class CustomDataModule
---@field enabled boolean
local CustomDataModule = {}
---@param stream number
---@param mode number
function CustomDataModule:SetMode(stream, mode) end
---@param stream number
---@return number
function CustomDataModule:GetMode(stream) end
---@param stream number
---@param count number
function CustomDataModule:SetVectorComponentCount(stream, count) end
---@param stream number
---@return number
function CustomDataModule:GetVectorComponentCount(stream) end
---@param stream number
---@param component number
---@param curve MinMaxCurve
function CustomDataModule:SetVector(stream, component, curve) end
---@param stream number
---@param component number
---@return MinMaxCurve
function CustomDataModule:GetVector(stream, component) end
---@param stream number
---@param gradient MinMaxGradient
function CustomDataModule:SetColor(stream, gradient) end
---@param stream number
---@return MinMaxGradient
function CustomDataModule:GetColor(stream) end

---@class PlaybackState
local PlaybackState = {}

---@class Trails
local Trails = {}

---@class YieldInstruction
local YieldInstruction = {}

---@class AnimatorUpdateMode : Enum
---@field Normal number @[static]
---@field AnimatePhysics number @[static]
---@field UnscaledTime number @[static]
---@field value__ number
local AnimatorUpdateMode = {}

---@class AnimatorControllerParameter
---@field nameHash number
---@field type number
---@field defaultFloat number
---@field defaultInt number
---@field defaultBool boolean
local AnimatorControllerParameter = {}
---@param o Object
---@return boolean
function AnimatorControllerParameter:Equals(o) end
---@return number
function AnimatorControllerParameter:GetHashCode() end

---@class AnimatorCullingMode : Enum
---@field AlwaysAnimate number @[static]
---@field CullUpdateTransforms number @[static]
---@field CullCompletely number @[static]
---@field value__ number
local AnimatorCullingMode = {}

---@class AnimatorRecorderMode : Enum
---@field Offline number @[static]
---@field Playback number @[static]
---@field Record number @[static]
---@field value__ number
local AnimatorRecorderMode = {}

---@class RuntimeAnimatorController : Object
---@field animationClips AnimationClip[]
local RuntimeAnimatorController = {}

---@class Avatar : Object
---@field isValid boolean
---@field isHuman boolean
---@field humanDescription HumanDescription
local Avatar = {}

---@class AnimatorStateInfo
---@field fullPathHash number
---@field shortNameHash number
---@field normalizedTime number
---@field length number
---@field speed number
---@field speedMultiplier number
---@field tagHash number
---@field loop boolean
local AnimatorStateInfo = {}
---@param name string
---@return boolean
function AnimatorStateInfo:IsName(name) end
---@param tag string
---@return boolean
function AnimatorStateInfo:IsTag(tag) end

---@class AnimatorTransitionInfo
---@field fullPathHash number
---@field nameHash number
---@field userNameHash number
---@field durationUnit number
---@field duration number
---@field normalizedTime number
---@field anyState boolean
local AnimatorTransitionInfo = {}
---@param name string
---@return boolean
function AnimatorTransitionInfo:IsName(name) end
---@param name string
---@return boolean
function AnimatorTransitionInfo:IsUserName(name) end

---@class AnimatorClipInfo
---@field clip AnimationClip
---@field weight number
local AnimatorClipInfo = {}

---@class IMECompositionMode : Enum
---@field Auto number @[static]
---@field On number @[static]
---@field Off number @[static]
---@field value__ number
local IMECompositionMode = {}

---@class DeviceOrientation : Enum
---@field Unknown number @[static]
---@field Portrait number @[static]
---@field PortraitUpsideDown number @[static]
---@field LandscapeLeft number @[static]
---@field LandscapeRight number @[static]
---@field FaceUp number @[static]
---@field FaceDown number @[static]
---@field value__ number
local DeviceOrientation = {}

---@class LocationService
---@field isEnabledByUser boolean
---@field status number
---@field lastData LocationInfo
local LocationService = {}
---@param desiredAccuracyInMeters number
---@param updateDistanceInMeters number
function LocationService:Start(desiredAccuracyInMeters, updateDistanceInMeters) end
---@param desiredAccuracyInMeters number
function LocationService:Start(desiredAccuracyInMeters) end
function LocationService:Start() end
function LocationService:Stop() end

---@class Compass
---@field magneticHeading number
---@field trueHeading number
---@field headingAccuracy number
---@field rawVector Vector3
---@field timestamp number
---@field enabled boolean
local Compass = {}

---@class Gyroscope
---@field rotationRate Vector3
---@field rotationRateUnbiased Vector3
---@field gravity Vector3
---@field userAcceleration Vector3
---@field attitude Quaternion
---@field enabled boolean
---@field updateInterval number
local Gyroscope = {}

---@class Touch
---@field fingerId number
---@field position Vector2
---@field rawPosition Vector2
---@field deltaPosition Vector2
---@field deltaTime number
---@field tapCount number
---@field phase number
---@field pressure number
---@field maximumPossiblePressure number
---@field type number
---@field altitudeAngle number
---@field azimuthAngle number
---@field radius number
---@field radiusVariance number
local Touch = {}

---@class AccelerationEvent
---@field acceleration Vector3
---@field deltaTime number
local AccelerationEvent = {}

---@class SkinQuality : Enum
---@field Auto number @[static]
---@field Bone1 number @[static]
---@field Bone2 number @[static]
---@field Bone4 number @[static]
---@field value__ number
local SkinQuality = {}

---@class Mesh : Object
---@field indexFormat number
---@field vertexBufferCount number
---@field blendShapeCount number
---@field bindposes Matrix4x4[]
---@field isReadable boolean
---@field vertexCount number
---@field subMeshCount number
---@field bounds Bounds
---@field vertices Vector3[]
---@field normals Vector3[]
---@field tangents Vector4[]
---@field uv Vector2[]
---@field uv2 Vector2[]
---@field uv3 Vector2[]
---@field uv4 Vector2[]
---@field uv5 Vector2[]
---@field uv6 Vector2[]
---@field uv7 Vector2[]
---@field uv8 Vector2[]
---@field colors Color[]
---@field colors32 Color32[]
---@field vertexAttributeCount number
---@field triangles number[]
---@field boneWeights BoneWeight[]
local Mesh = {}
---@param indexCount number
---@param format number
function Mesh:SetIndexBufferParams(indexCount, format) end
---@param vertexCount number
---@param attributes VertexAttributeDescriptor[]
function Mesh:SetVertexBufferParams(vertexCount, attributes) end
---@param index number
---@return VertexAttributeDescriptor
function Mesh:GetVertexAttribute(index) end
---@param attr number
---@return boolean
function Mesh:HasVertexAttribute(attr) end
---@param attr number
---@return number
function Mesh:GetVertexAttributeDimension(attr) end
---@param attr number
---@return number
function Mesh:GetVertexAttributeFormat(attr) end
---@param index number
---@return IntPtr
function Mesh:GetNativeVertexBufferPtr(index) end
---@return IntPtr
function Mesh:GetNativeIndexBufferPtr() end
function Mesh:ClearBlendShapes() end
---@param shapeIndex number
---@return string
function Mesh:GetBlendShapeName(shapeIndex) end
---@param blendShapeName string
---@return number
function Mesh:GetBlendShapeIndex(blendShapeName) end
---@param shapeIndex number
---@return number
function Mesh:GetBlendShapeFrameCount(shapeIndex) end
---@param shapeIndex number
---@param frameIndex number
---@return number
function Mesh:GetBlendShapeFrameWeight(shapeIndex, frameIndex) end
---@param shapeIndex number
---@param frameIndex number
---@param deltaVertices Vector3[]
---@param deltaNormals Vector3[]
---@param deltaTangents Vector3[]
function Mesh:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents) end
---@param shapeName string
---@param frameWeight number
---@param deltaVertices Vector3[]
---@param deltaNormals Vector3[]
---@param deltaTangents Vector3[]
function Mesh:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents) end
---@param bonesPerVertex NativeArray<number>
---@param weights NativeArray<BoneWeight1>
function Mesh:SetBoneWeights(bonesPerVertex, weights) end
---@return NativeArray<BoneWeight1>
function Mesh:GetAllBoneWeights() end
---@return NativeArray<number>
function Mesh:GetBonesPerVertex() end
---@param index number
---@param desc SubMeshDescriptor
---@param flags number
function Mesh:SetSubMesh(index, desc, flags) end
---@param index number
---@return SubMeshDescriptor
function Mesh:GetSubMesh(index) end
function Mesh:MarkModified() end
---@param uvSetIndex number
---@return number
function Mesh:GetUVDistributionMetric(uvSetIndex) end
---@param vertices List<Vector3>
function Mesh:GetVertices(vertices) end
---@param inVertices List<Vector3>
function Mesh:SetVertices(inVertices) end
---@param inVertices List<Vector3>
---@param start number
---@param length number
function Mesh:SetVertices(inVertices, start, length) end
---@param inVertices Vector3[]
function Mesh:SetVertices(inVertices) end
---@param inVertices Vector3[]
---@param start number
---@param length number
function Mesh:SetVertices(inVertices, start, length) end
---@param inVertices NativeArray<T>
function Mesh:SetVertices(inVertices) end
---@param inVertices NativeArray<T>
---@param start number
---@param length number
function Mesh:SetVertices(inVertices, start, length) end
---@param normals List<Vector3>
function Mesh:GetNormals(normals) end
---@param inNormals List<Vector3>
function Mesh:SetNormals(inNormals) end
---@param inNormals List<Vector3>
---@param start number
---@param length number
function Mesh:SetNormals(inNormals, start, length) end
---@param inNormals Vector3[]
function Mesh:SetNormals(inNormals) end
---@param inNormals Vector3[]
---@param start number
---@param length number
function Mesh:SetNormals(inNormals, start, length) end
---@param inNormals NativeArray<T>
function Mesh:SetNormals(inNormals) end
---@param inNormals NativeArray<T>
---@param start number
---@param length number
function Mesh:SetNormals(inNormals, start, length) end
---@param tangents List<Vector4>
function Mesh:GetTangents(tangents) end
---@param inTangents List<Vector4>
function Mesh:SetTangents(inTangents) end
---@param inTangents List<Vector4>
---@param start number
---@param length number
function Mesh:SetTangents(inTangents, start, length) end
---@param inTangents Vector4[]
function Mesh:SetTangents(inTangents) end
---@param inTangents Vector4[]
---@param start number
---@param length number
function Mesh:SetTangents(inTangents, start, length) end
---@param inTangents NativeArray<T>
function Mesh:SetTangents(inTangents) end
---@param inTangents NativeArray<T>
---@param start number
---@param length number
function Mesh:SetTangents(inTangents, start, length) end
---@param colors List<Color>
function Mesh:GetColors(colors) end
---@param inColors List<Color>
function Mesh:SetColors(inColors) end
---@param inColors List<Color>
---@param start number
---@param length number
function Mesh:SetColors(inColors, start, length) end
---@param inColors Color[]
function Mesh:SetColors(inColors) end
---@param inColors Color[]
---@param start number
---@param length number
function Mesh:SetColors(inColors, start, length) end
---@param colors List<Color32>
function Mesh:GetColors(colors) end
---@param inColors List<Color32>
function Mesh:SetColors(inColors) end
---@param inColors List<Color32>
---@param start number
---@param length number
function Mesh:SetColors(inColors, start, length) end
---@param inColors Color32[]
function Mesh:SetColors(inColors) end
---@param inColors Color32[]
---@param start number
---@param length number
function Mesh:SetColors(inColors, start, length) end
---@param inColors NativeArray<T>
function Mesh:SetColors(inColors) end
---@param inColors NativeArray<T>
---@param start number
---@param length number
function Mesh:SetColors(inColors, start, length) end
---@param channel number
---@param uvs List<Vector2>
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs List<Vector3>
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs List<Vector4>
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs List<Vector2>
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs List<Vector3>
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs List<Vector4>
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs Vector2[]
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs Vector3[]
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs Vector4[]
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs Vector2[]
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs Vector3[]
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs Vector4[]
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs NativeArray<T>
function Mesh:SetUVs(channel, uvs) end
---@param channel number
---@param uvs NativeArray<T>
---@param start number
---@param length number
function Mesh:SetUVs(channel, uvs, start, length) end
---@param channel number
---@param uvs List<Vector2>
function Mesh:GetUVs(channel, uvs) end
---@param channel number
---@param uvs List<Vector3>
function Mesh:GetUVs(channel, uvs) end
---@param channel number
---@param uvs List<Vector4>
function Mesh:GetUVs(channel, uvs) end
---@return VertexAttributeDescriptor[]
function Mesh:GetVertexAttributes() end
---@param attributes VertexAttributeDescriptor[]
---@return number
function Mesh:GetVertexAttributes(attributes) end
---@param attributes List<VertexAttributeDescriptor>
---@return number
function Mesh:GetVertexAttributes(attributes) end
---@param data NativeArray<T>
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param stream number
---@param flags number
function Mesh:SetVertexBufferData(data, dataStart, meshBufferStart, count, stream, flags) end
---@param data T[]
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param stream number
---@param flags number
function Mesh:SetVertexBufferData(data, dataStart, meshBufferStart, count, stream, flags) end
---@param data List<T>
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param stream number
---@param flags number
function Mesh:SetVertexBufferData(data, dataStart, meshBufferStart, count, stream, flags) end
---@param submesh number
---@return number[]
function Mesh:GetTriangles(submesh) end
---@param submesh number
---@param applyBaseVertex boolean
---@return number[]
function Mesh:GetTriangles(submesh, applyBaseVertex) end
---@param triangles List<number>
---@param submesh number
function Mesh:GetTriangles(triangles, submesh) end
---@param triangles List<number>
---@param submesh number
---@param applyBaseVertex boolean
function Mesh:GetTriangles(triangles, submesh, applyBaseVertex) end
---@param triangles List<number>
---@param submesh number
---@param applyBaseVertex boolean
function Mesh:GetTriangles(triangles, submesh, applyBaseVertex) end
---@param submesh number
---@return number[]
function Mesh:GetIndices(submesh) end
---@param submesh number
---@param applyBaseVertex boolean
---@return number[]
function Mesh:GetIndices(submesh, applyBaseVertex) end
---@param indices List<number>
---@param submesh number
function Mesh:GetIndices(indices, submesh) end
---@param indices List<number>
---@param submesh number
---@param applyBaseVertex boolean
function Mesh:GetIndices(indices, submesh, applyBaseVertex) end
---@param indices List<number>
---@param submesh number
---@param applyBaseVertex boolean
function Mesh:GetIndices(indices, submesh, applyBaseVertex) end
---@param data NativeArray<T>
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param flags number
function Mesh:SetIndexBufferData(data, dataStart, meshBufferStart, count, flags) end
---@param data T[]
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param flags number
function Mesh:SetIndexBufferData(data, dataStart, meshBufferStart, count, flags) end
---@param data List<T>
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param flags number
function Mesh:SetIndexBufferData(data, dataStart, meshBufferStart, count, flags) end
---@param submesh number
---@return number
function Mesh:GetIndexStart(submesh) end
---@param submesh number
---@return number
function Mesh:GetIndexCount(submesh) end
---@param submesh number
---@return number
function Mesh:GetBaseVertex(submesh) end
---@param triangles number[]
---@param submesh number
function Mesh:SetTriangles(triangles, submesh) end
---@param triangles number[]
---@param submesh number
---@param calculateBounds boolean
function Mesh:SetTriangles(triangles, submesh, calculateBounds) end
---@param triangles number[]
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex) end
---@param triangles number[]
---@param trianglesStart number
---@param trianglesLength number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, trianglesStart, trianglesLength, submesh, calculateBounds, baseVertex) end
---@param triangles number[]
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex) end
---@param triangles number[]
---@param trianglesStart number
---@param trianglesLength number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, trianglesStart, trianglesLength, submesh, calculateBounds, baseVertex) end
---@param triangles List<number>
---@param submesh number
function Mesh:SetTriangles(triangles, submesh) end
---@param triangles List<number>
---@param submesh number
---@param calculateBounds boolean
function Mesh:SetTriangles(triangles, submesh, calculateBounds) end
---@param triangles List<number>
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex) end
---@param triangles List<number>
---@param trianglesStart number
---@param trianglesLength number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, trianglesStart, trianglesLength, submesh, calculateBounds, baseVertex) end
---@param triangles List<number>
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex) end
---@param triangles List<number>
---@param trianglesStart number
---@param trianglesLength number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetTriangles(triangles, trianglesStart, trianglesLength, submesh, calculateBounds, baseVertex) end
---@param indices number[]
---@param topology number
---@param submesh number
function Mesh:SetIndices(indices, topology, submesh) end
---@param indices number[]
---@param topology number
---@param submesh number
---@param calculateBounds boolean
function Mesh:SetIndices(indices, topology, submesh, calculateBounds) end
---@param indices number[]
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex) end
---@param indices number[]
---@param indicesStart number
---@param indicesLength number
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@param indices number[]
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex) end
---@param indices number[]
---@param indicesStart number
---@param indicesLength number
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@param indices NativeArray<T>
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex) end
---@param indices NativeArray<T>
---@param indicesStart number
---@param indicesLength number
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@param indices List<number>
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex) end
---@param indices List<number>
---@param indicesStart number
---@param indicesLength number
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@param indices List<number>
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex) end
---@param indices List<number>
---@param indicesStart number
---@param indicesLength number
---@param topology number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@param bindposes List<Matrix4x4>
function Mesh:GetBindposes(bindposes) end
---@param boneWeights List<BoneWeight>
function Mesh:GetBoneWeights(boneWeights) end
---@param keepVertexLayout boolean
function Mesh:Clear(keepVertexLayout) end
function Mesh:Clear() end
function Mesh:RecalculateBounds() end
function Mesh:RecalculateNormals() end
function Mesh:RecalculateTangents() end
function Mesh:MarkDynamic() end
---@param markNoLongerReadable boolean
function Mesh:UploadMeshData(markNoLongerReadable) end
function Mesh:Optimize() end
function Mesh:OptimizeIndexBuffers() end
function Mesh:OptimizeReorderVertexBuffer() end
---@param submesh number
---@return number
function Mesh:GetTopology(submesh) end
---@param combine CombineInstance[]
---@param mergeSubMeshes boolean
---@param useMatrices boolean
---@param hasLightmapData boolean
function Mesh:CombineMeshes(combine, mergeSubMeshes, useMatrices, hasLightmapData) end
---@param combine CombineInstance[]
---@param mergeSubMeshes boolean
---@param useMatrices boolean
function Mesh:CombineMeshes(combine, mergeSubMeshes, useMatrices) end
---@param combine CombineInstance[]
---@param mergeSubMeshes boolean
function Mesh:CombineMeshes(combine, mergeSubMeshes) end
---@param combine CombineInstance[]
function Mesh:CombineMeshes(combine) end

---@class ReceiveGI : Enum
---@field Lightmaps number @[static]
---@field LightProbes number @[static]
---@field value__ number
local ReceiveGI = {}

---@class MeshColliderCookingOptions : Enum
---@field None number @[static]
---@field CookForFasterSimulation number @[static]
---@field EnableMeshCleaning number @[static]
---@field WeldColocatedVertices number @[static]
---@field UseFastMidphase number @[static]
---@field value__ number
local MeshColliderCookingOptions = {}

---@class CollisionFlags : Enum
---@field None number @[static]
---@field Sides number @[static]
---@field Above number @[static]
---@field Below number @[static]
---@field CollidedSides number @[static]
---@field CollidedAbove number @[static]
---@field CollidedBelow number @[static]
---@field value__ number
local CollisionFlags = {}

---@class AnimationEvent
---@field stringParameter string
---@field floatParameter number
---@field intParameter number
---@field objectReferenceParameter Object
---@field functionName string
---@field time number
---@field messageOptions number
---@field isFiredByLegacy boolean
---@field isFiredByAnimator boolean
---@field animationState AnimationState
---@field animatorStateInfo AnimatorStateInfo
---@field animatorClipInfo AnimatorClipInfo
local AnimationEvent = {}

---@class Motion : Object
---@field averageDuration number
---@field averageAngularSpeed number
---@field averageSpeed Vector3
---@field apparentSpeed number
---@field isLooping boolean
---@field legacy boolean
---@field isHumanMotion boolean
local Motion = {}

---@class ShadowQuality : Enum
---@field Disable number @[static]
---@field HardOnly number @[static]
---@field All number @[static]
---@field value__ number
local ShadowQuality = {}

---@class ShadowProjection : Enum
---@field CloseFit number @[static]
---@field StableFit number @[static]
---@field value__ number
local ShadowProjection = {}

---@class ShadowResolution : Enum
---@field Low number @[static]
---@field Medium number @[static]
---@field High number @[static]
---@field VeryHigh number @[static]
---@field value__ number
local ShadowResolution = {}

---@class ShadowmaskMode : Enum
---@field Shadowmask number @[static]
---@field DistanceShadowmask number @[static]
---@field value__ number
local ShadowmaskMode = {}

---@class RenderPipelineAsset : ScriptableObject
---@field terrainBrushPassIndex number
---@field renderingLayerMaskNames string[]
---@field defaultMaterial Material
---@field autodeskInteractiveShader Shader
---@field autodeskInteractiveTransparentShader Shader
---@field autodeskInteractiveMaskedShader Shader
---@field terrainDetailLitShader Shader
---@field terrainDetailGrassShader Shader
---@field terrainDetailGrassBillboardShader Shader
---@field defaultParticleMaterial Material
---@field defaultLineMaterial Material
---@field defaultTerrainMaterial Material
---@field defaultUIMaterial Material
---@field defaultUIOverdrawMaterial Material
---@field defaultUIETC1SupportedMaterial Material
---@field default2DMaterial Material
---@field defaultShader Shader
---@field defaultSpeedTree7Shader Shader
---@field defaultSpeedTree8Shader Shader
local RenderPipelineAsset = {}

---@class ColorSpace : Enum
---@field Uninitialized number @[static]
---@field Gamma number @[static]
---@field Linear number @[static]
---@field value__ number
local ColorSpace = {}

---@class FogMode : Enum
---@field Linear number @[static]
---@field Exponential number @[static]
---@field ExponentialSquared number @[static]
---@field value__ number
local FogMode = {}

---@class AmbientMode : Enum
---@field Skybox number @[static]
---@field Trilight number @[static]
---@field Flat number @[static]
---@field Custom number @[static]
---@field value__ number
local AmbientMode = {}

---@class SphericalHarmonicsL2
---@field Item number
local SphericalHarmonicsL2 = {}
function SphericalHarmonicsL2:Clear() end
---@param color Color
function SphericalHarmonicsL2:AddAmbientLight(color) end
---@param direction Vector3
---@param color Color
---@param intensity number
function SphericalHarmonicsL2:AddDirectionalLight(direction, color, intensity) end
---@param directions Vector3[]
---@param results Color[]
function SphericalHarmonicsL2:Evaluate(directions, results) end
---@return number
function SphericalHarmonicsL2:GetHashCode() end
---@param other Object
---@return boolean
function SphericalHarmonicsL2:Equals(other) end
---@param other SphericalHarmonicsL2
---@return boolean
function SphericalHarmonicsL2:Equals(other) end

---@class Cubemap : Texture
---@field format number
---@field isReadable boolean
---@field streamingMipmaps boolean
---@field streamingMipmapsPriority number
---@field requestedMipmapLevel number
---@field desiredMipmapLevel number
---@field loadingMipmapLevel number
---@field loadedMipmapLevel number
local Cubemap = {}
---@param nativeTexture IntPtr
function Cubemap:UpdateExternalTexture(nativeTexture) end
---@param smoothRegionWidthInPixels number
function Cubemap:SmoothEdges(smoothRegionWidthInPixels) end
function Cubemap:SmoothEdges() end
---@param face number
---@param miplevel number
---@return Color[]
function Cubemap:GetPixels(face, miplevel) end
---@param face number
---@return Color[]
function Cubemap:GetPixels(face) end
---@param colors Color[]
---@param face number
---@param miplevel number
function Cubemap:SetPixels(colors, face, miplevel) end
---@param colors Color[]
---@param face number
function Cubemap:SetPixels(colors, face) end
function Cubemap:ClearRequestedMipmapLevel() end
---@return boolean
function Cubemap:IsRequestedMipmapLevelLoaded() end
---@param data T[]
---@param mipLevel number
---@param face number
---@param sourceDataStartIndex number
function Cubemap:SetPixelData(data, mipLevel, face, sourceDataStartIndex) end
---@param data NativeArray<T>
---@param mipLevel number
---@param face number
---@param sourceDataStartIndex number
function Cubemap:SetPixelData(data, mipLevel, face, sourceDataStartIndex) end
---@param face number
---@param x number
---@param y number
---@param color Color
function Cubemap:SetPixel(face, x, y, color) end
---@param face number
---@param x number
---@param y number
---@return Color
function Cubemap:GetPixel(face, x, y) end
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function Cubemap:Apply(updateMipmaps, makeNoLongerReadable) end
---@param updateMipmaps boolean
function Cubemap:Apply(updateMipmaps) end
function Cubemap:Apply() end
---@param width number
---@param format number
---@param mipmap boolean
---@param nativeTex IntPtr
---@return Cubemap
function Cubemap.CreateExternalTexture(width, format, mipmap, nativeTex) end

---@class DefaultReflectionMode : Enum
---@field Skybox number @[static]
---@field Custom number @[static]
---@field value__ number
local DefaultReflectionMode = {}

---@class VRTextureUsage : Enum
---@field None number @[static]
---@field OneEye number @[static]
---@field TwoEyes number @[static]
---@field DeviceSpecific number @[static]
---@field value__ number
local VRTextureUsage = {}

---@class RenderTextureMemoryless : Enum
---@field None number @[static]
---@field Color number @[static]
---@field Depth number @[static]
---@field MSAA number @[static]
---@field value__ number
local RenderTextureMemoryless = {}

---@class RenderTextureFormat : Enum
---@field ARGB32 number @[static]
---@field Depth number @[static]
---@field ARGBHalf number @[static]
---@field Shadowmap number @[static]
---@field RGB565 number @[static]
---@field ARGB4444 number @[static]
---@field ARGB1555 number @[static]
---@field Default number @[static]
---@field ARGB2101010 number @[static]
---@field DefaultHDR number @[static]
---@field ARGB64 number @[static]
---@field ARGBFloat number @[static]
---@field RGFloat number @[static]
---@field RGHalf number @[static]
---@field RFloat number @[static]
---@field RHalf number @[static]
---@field R8 number @[static]
---@field ARGBInt number @[static]
---@field RGInt number @[static]
---@field RInt number @[static]
---@field BGRA32 number @[static]
---@field RGB111110Float number @[static]
---@field RG32 number @[static]
---@field RGBAUShort number @[static]
---@field RG16 number @[static]
---@field BGRA10101010_XR number @[static]
---@field BGR101010_XR number @[static]
---@field R16 number @[static]
---@field value__ number
local RenderTextureFormat = {}

---@class RenderBuffer
local RenderBuffer = {}
---@return IntPtr
function RenderBuffer:GetNativeRenderBufferPtr() end

---@class ResourceRequest : AsyncOperation
---@field asset Object
local ResourceRequest = {}

---@class BrushType : Enum
---@field None number @[static]
---@field Rect number @[static]
---@field Circle number @[static]
---@field value__ number
BrushType = {}

---@class BrushSetType : Enum
---@field None number @[static]
---@field Block number @[static]
---@field Gate number @[static]
---@field Rubber number @[static]
---@field Area number @[static]
---@field value__ number
BrushSetType = {}

---@class Terrain : Behaviour
---@field heightmapFormat number @[static]
---@field heightmapTextureFormat number @[static]
---@field heightmapRenderTextureFormat number @[static]
---@field normalmapFormat number @[static]
---@field normalmapTextureFormat number @[static]
---@field normalmapRenderTextureFormat number @[static]
---@field holesFormat number @[static]
---@field holesRenderTextureFormat number @[static]
---@field compressedHolesFormat number @[static]
---@field compressedHolesTextureFormat number @[static]
---@field activeTerrain Terrain @[static]
---@field activeTerrains Terrain[] @[static]
---@field terrainData TerrainData
---@field treeDistance number
---@field treeBillboardDistance number
---@field treeCrossFadeLength number
---@field treeMaximumFullLODCount number
---@field detailObjectDistance number
---@field detailObjectDensity number
---@field heightmapPixelError number
---@field heightmapMaximumLOD number
---@field basemapDistance number
---@field lightmapIndex number
---@field realtimeLightmapIndex number
---@field lightmapScaleOffset Vector4
---@field realtimeLightmapScaleOffset Vector4
---@field freeUnusedRenderingResources boolean
---@field shadowCastingMode number
---@field reflectionProbeUsage number
---@field materialTemplate Material
---@field drawHeightmap boolean
---@field allowAutoConnect boolean
---@field groupingID number
---@field drawInstanced boolean
---@field normalmapTexture RenderTexture
---@field drawTreesAndFoliage boolean
---@field patchBoundsMultiplier Vector3
---@field treeLODBiasMultiplier number
---@field collectDetailPatches boolean
---@field editorRenderFlags number
---@field deringLightProbesForTrees boolean
---@field preserveTreePrototypeLayers boolean
---@field leftNeighbor Terrain
---@field rightNeighbor Terrain
---@field topNeighbor Terrain
---@field bottomNeighbor Terrain
---@field renderingLayerMask number
local Terrain = {}
---@param result List<ReflectionProbeBlendInfo>
function Terrain:GetClosestReflectionProbes(result) end
---@param worldPosition Vector3
---@return number
function Terrain:SampleHeight(worldPosition) end
---@param instance TreeInstance
function Terrain:AddTreeInstance(instance) end
---@param left Terrain
---@param top Terrain
---@param right Terrain
---@param bottom Terrain
function Terrain:SetNeighbors(left, top, right, bottom) end
---@return Vector3
function Terrain:GetPosition() end
function Terrain:Flush() end
---@param properties MaterialPropertyBlock
function Terrain:SetSplatMaterialPropertyBlock(properties) end
---@param dest MaterialPropertyBlock
function Terrain:GetSplatMaterialPropertyBlock(dest) end
function Terrain.SetConnectivityDirty() end
---@param assignTerrain TerrainData
---@return GameObject
function Terrain.CreateTerrainGameObject(assignTerrain) end

---@class LuaManager
LuaManager = {}
---@param funcName string
---@param logmiss boolean
---@return LuaFunction
function LuaManager:GetLuaFunction(funcName, logmiss) end
---@param funcName string
---@param args Object
---@param logmiss boolean
function LuaManager:CallFunction(funcName, args, logmiss) end

---@class JpsHelperManager
---@field currentStep number
---@field maxStep number
---@field startX number
---@field startY number
---@field endX number
---@field endY number
---@field finalNode ANode
---@field pathList List<number>
---@field pathListV2 List<Vector2>
---@field closeDict Dictionary<number,ANode>
---@field openDict Dictionary<number,ANode>
---@field sortedOpenQue PriorityQueue<ANode>
---@field neighbors List<ANode>
local JpsHelperManager = {}
---@param grid Grid
function JpsHelperManager:SetMapData(grid) end
---@param startX number
---@param startY number
---@param endX number
---@param endY number
---@param p_maxStep number
---@param ifNum boolean
---@return boolean
function JpsHelperManager:InitJps(startX, startY, endX, endY, p_maxStep, ifNum) end
---@return boolean
function JpsHelperManager:FindPath() end
function JpsHelperManager:NodeToList() end
---@param _nodeX number
---@param _nodeY number
---@param endX number
---@param endY number
---@return number
function JpsHelperManager:GetNodeG(_nodeX, _nodeY, endX, endY) end
---@param _nodeX number
---@param _nodeY number
---@param endX number
---@param endY number
---@return number
function JpsHelperManager:GetNodeH(_nodeX, _nodeY, endX, endY) end
---@param _neighbor ANode
---@param _current ANode
---@param _grid Grid
---@return ANode
function JpsHelperManager:jump(_neighbor, _current, _grid) end
---@param forceNeighbor1 ANode
---@param obstacle1 ANode
---@param forceNeighbor2 ANode
---@param obstacle2 ANode
---@return boolean
function JpsHelperManager:HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2) end
---@param _spot ANode
function JpsHelperManager:GetNeighbors(_spot) end
---@param _cell ANode
---@param _grid Grid
---@param list List<ANode>
---@param _dirx number
---@param _diry number
function JpsHelperManager:AddForceNeighbor(_cell, _grid, list, _dirx, _diry) end
---@param _grid Grid
---@param _currentCell ANode
---@param _dir number
---@return List<ANode>
function JpsHelperManager:HorizontalTest(_grid, _currentCell, _dir) end
---@param _grid Grid
---@param _currentCell ANode
---@param _dir number
---@return List<ANode>
function JpsHelperManager:VerticalTest(_grid, _currentCell, _dir) end
---@param _grid Grid
---@param _currentCell ANode
---@param _dirx number
---@param _diry number
---@return List<ANode>
function JpsHelperManager:DiagonalTest(_grid, _currentCell, _dirx, _diry) end
---@param _cell ANode
---@param _grid Grid
---@param list List<ANode>
---@param _close number
---@param _open number
---@param _add number
function JpsHelperManager:AddForceNeighbor_D(_cell, _grid, list, _close, _open, _add) end
---@param _spot ANode
---@param _dirx number
---@param _diry number
function JpsHelperManager:GetNeighbors_WithCut(_spot, _dirx, _diry) end
function JpsHelperManager:Search() end

---@class TypeCode : Enum
---@field Empty number @[static]
---@field Object number @[static]
---@field DBNull number @[static]
---@field Boolean number @[static]
---@field Char number @[static]
---@field SByte number @[static]
---@field Byte number @[static]
---@field Int16 number @[static]
---@field UInt16 number @[static]
---@field Int32 number @[static]
---@field UInt32 number @[static]
---@field Int64 number @[static]
---@field UInt64 number @[static]
---@field Single number @[static]
---@field Double number @[static]
---@field Decimal number @[static]
---@field DateTime number @[static]
---@field String number @[static]
---@field value__ number
local TypeCode = {}

---@class Array
---@field LongLength number
---@field IsFixedSize boolean
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field SyncRoot Object
---@field Length number
---@field Rank number
local Array = {}
---@param array Array
---@param index number
function Array:CopyTo(array, index) end
---@return Object
function Array:Clone() end
---@param array Array
---@param index number
function Array:CopyTo(array, index) end
---@param dimension number
---@return number
function Array:GetLongLength(dimension) end
---@param index number
---@return Object
function Array:GetValue(index) end
---@param index1 number
---@param index2 number
---@return Object
function Array:GetValue(index1, index2) end
---@param index1 number
---@param index2 number
---@param index3 number
---@return Object
function Array:GetValue(index1, index2, index3) end
---@param indices number[]
---@return Object
function Array:GetValue(indices) end
---@param value Object
---@param index number
function Array:SetValue(value, index) end
---@param value Object
---@param index1 number
---@param index2 number
function Array:SetValue(value, index1, index2) end
---@param value Object
---@param index1 number
---@param index2 number
---@param index3 number
function Array:SetValue(value, index1, index2, index3) end
---@param value Object
---@param indices number[]
function Array:SetValue(value, indices) end
---@return IEnumerator
function Array:GetEnumerator() end
---@param dimension number
---@return number
function Array:GetLength(dimension) end
---@param dimension number
---@return number
function Array:GetLowerBound(dimension) end
---@param indices number[]
---@return Object
function Array:GetValue(indices) end
---@param value Object
---@param indices number[]
function Array:SetValue(value, indices) end
---@param dimension number
---@return number
function Array:GetUpperBound(dimension) end
---@param index number
---@return Object
function Array:GetValue(index) end
---@param index1 number
---@param index2 number
---@return Object
function Array:GetValue(index1, index2) end
---@param index1 number
---@param index2 number
---@param index3 number
---@return Object
function Array:GetValue(index1, index2, index3) end
---@param value Object
---@param index number
function Array:SetValue(value, index) end
---@param value Object
---@param index1 number
---@param index2 number
function Array:SetValue(value, index1, index2) end
---@param value Object
---@param index1 number
---@param index2 number
---@param index3 number
function Array:SetValue(value, index1, index2, index3) end
function Array:Initialize() end
---@param elementType Type
---@param lengths number[]
---@return Array
function Array.CreateInstance(elementType, lengths) end
---@param array T[]
---@return ReadOnlyCollection<T>
function Array.AsReadOnly(array) end
---@param array T[]&
---@param newSize number
function Array.Resize(array, newSize) end
---@param array Array
---@param value Object
---@return number
function Array.BinarySearch(array, value) end
---@param array TInput[]
---@param converter Converter<TInput,TOutput>
---@return TOutput[]
function Array.ConvertAll(array, converter) end
---@param sourceArray Array
---@param destinationArray Array
---@param length number
function Array.Copy(sourceArray, destinationArray, length) end
---@param sourceArray Array
---@param sourceIndex number
---@param destinationArray Array
---@param destinationIndex number
---@param length number
function Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end
---@param array T[]
---@param action Action<T>
function Array.ForEach(array, action) end
---@param array Array
---@param index number
---@param length number
---@param value Object
---@return number
function Array.BinarySearch(array, index, length, value) end
---@param array Array
---@param value Object
---@param comparer IComparer
---@return number
function Array.BinarySearch(array, value, comparer) end
---@param array Array
---@param index number
---@param length number
---@param value Object
---@param comparer IComparer
---@return number
function Array.BinarySearch(array, index, length, value, comparer) end
---@param array T[]
---@param value T
---@return number
function Array.BinarySearch(array, value) end
---@param array T[]
---@param value T
---@param comparer IComparer<T>
---@return number
function Array.BinarySearch(array, value, comparer) end
---@param array T[]
---@param index number
---@param length number
---@param value T
---@return number
function Array.BinarySearch(array, index, length, value) end
---@param array T[]
---@param index number
---@param length number
---@param value T
---@param comparer IComparer<T>
---@return number
function Array.BinarySearch(array, index, length, value, comparer) end
---@param array Array
---@param value Object
---@return number
function Array.IndexOf(array, value) end
---@param array Array
---@param value Object
---@param startIndex number
---@return number
function Array.IndexOf(array, value, startIndex) end
---@param array Array
---@param value Object
---@param startIndex number
---@param count number
---@return number
function Array.IndexOf(array, value, startIndex, count) end
---@param array T[]
---@param value T
---@return number
function Array.IndexOf(array, value) end
---@param array T[]
---@param value T
---@param startIndex number
---@return number
function Array.IndexOf(array, value, startIndex) end
---@param array T[]
---@param value T
---@param startIndex number
---@param count number
---@return number
function Array.IndexOf(array, value, startIndex, count) end
---@param array Array
---@param value Object
---@return number
function Array.LastIndexOf(array, value) end
---@param array Array
---@param value Object
---@param startIndex number
---@return number
function Array.LastIndexOf(array, value, startIndex) end
---@param array Array
---@param value Object
---@param startIndex number
---@param count number
---@return number
function Array.LastIndexOf(array, value, startIndex, count) end
---@param array T[]
---@param value T
---@return number
function Array.LastIndexOf(array, value) end
---@param array T[]
---@param value T
---@param startIndex number
---@return number
function Array.LastIndexOf(array, value, startIndex) end
---@param array T[]
---@param value T
---@param startIndex number
---@param count number
---@return number
function Array.LastIndexOf(array, value, startIndex, count) end
---@param array Array
function Array.Reverse(array) end
---@param array Array
---@param index number
---@param length number
function Array.Reverse(array, index, length) end
---@param array T[]
function Array.Reverse(array) end
---@param array T[]
---@param index number
---@param length number
function Array.Reverse(array, index, length) end
---@param array Array
function Array.Sort(array) end
---@param array Array
---@param index number
---@param length number
function Array.Sort(array, index, length) end
---@param array Array
---@param comparer IComparer
function Array.Sort(array, comparer) end
---@param array Array
---@param index number
---@param length number
---@param comparer IComparer
function Array.Sort(array, index, length, comparer) end
---@param keys Array
---@param items Array
function Array.Sort(keys, items) end
---@param keys Array
---@param items Array
---@param comparer IComparer
function Array.Sort(keys, items, comparer) end
---@param keys Array
---@param items Array
---@param index number
---@param length number
function Array.Sort(keys, items, index, length) end
---@param keys Array
---@param items Array
---@param index number
---@param length number
---@param comparer IComparer
function Array.Sort(keys, items, index, length, comparer) end
---@param array T[]
function Array.Sort(array) end
---@param array T[]
---@param index number
---@param length number
function Array.Sort(array, index, length) end
---@param array T[]
---@param comparer IComparer<T>
function Array.Sort(array, comparer) end
---@param array T[]
---@param index number
---@param length number
---@param comparer IComparer<T>
function Array.Sort(array, index, length, comparer) end
---@param array T[]
---@param comparison Comparison<T>
function Array.Sort(array, comparison) end
---@param keys TKey[]
---@param items TValue[]
function Array.Sort(keys, items) end
---@param keys TKey[]
---@param items TValue[]
---@param index number
---@param length number
function Array.Sort(keys, items, index, length) end
---@param keys TKey[]
---@param items TValue[]
---@param comparer IComparer<TKey>
function Array.Sort(keys, items, comparer) end
---@param keys TKey[]
---@param items TValue[]
---@param index number
---@param length number
---@param comparer IComparer<TKey>
function Array.Sort(keys, items, index, length, comparer) end
---@param array T[]
---@param match Predicate<T>
---@return boolean
function Array.Exists(array, match) end
---@param array T[]
---@param value T
function Array.Fill(array, value) end
---@param array T[]
---@param value T
---@param startIndex number
---@param count number
function Array.Fill(array, value, startIndex, count) end
---@param array T[]
---@param match Predicate<T>
---@return T
function Array.Find(array, match) end
---@param array T[]
---@param match Predicate<T>
---@return T[]
function Array.FindAll(array, match) end
---@param array T[]
---@param match Predicate<T>
---@return number
function Array.FindIndex(array, match) end
---@param array T[]
---@param startIndex number
---@param match Predicate<T>
---@return number
function Array.FindIndex(array, startIndex, match) end
---@param array T[]
---@param startIndex number
---@param count number
---@param match Predicate<T>
---@return number
function Array.FindIndex(array, startIndex, count, match) end
---@param array T[]
---@param match Predicate<T>
---@return T
function Array.FindLast(array, match) end
---@param array T[]
---@param match Predicate<T>
---@return number
function Array.FindLastIndex(array, match) end
---@param array T[]
---@param startIndex number
---@param match Predicate<T>
---@return number
function Array.FindLastIndex(array, startIndex, match) end
---@param array T[]
---@param startIndex number
---@param count number
---@param match Predicate<T>
---@return number
function Array.FindLastIndex(array, startIndex, count, match) end
---@param array T[]
---@param match Predicate<T>
---@return boolean
function Array.TrueForAll(array, match) end
---@param elementType Type
---@param length number
---@return Array
function Array.CreateInstance(elementType, length) end
---@param elementType Type
---@param length1 number
---@param length2 number
---@return Array
function Array.CreateInstance(elementType, length1, length2) end
---@param elementType Type
---@param length1 number
---@param length2 number
---@param length3 number
---@return Array
function Array.CreateInstance(elementType, length1, length2, length3) end
---@param elementType Type
---@param lengths number[]
---@return Array
function Array.CreateInstance(elementType, lengths) end
---@param elementType Type
---@param lengths number[]
---@param lowerBounds number[]
---@return Array
function Array.CreateInstance(elementType, lengths, lowerBounds) end
---@param array Array
---@param index number
---@param length number
function Array.Clear(array, index, length) end
---@param sourceArray Array
---@param destinationArray Array
---@param length number
function Array.Copy(sourceArray, destinationArray, length) end
---@param sourceArray Array
---@param sourceIndex number
---@param destinationArray Array
---@param destinationIndex number
---@param length number
function Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end
---@param sourceArray Array
---@param sourceIndex number
---@param destinationArray Array
---@param destinationIndex number
---@param length number
function Array.ConstrainedCopy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end
---@return T[]
function Array.Empty() end

---@class HideFlags : Enum
---@field None number @[static]
---@field HideInHierarchy number @[static]
---@field HideInInspector number @[static]
---@field DontSaveInEditor number @[static]
---@field NotEditable number @[static]
---@field DontSaveInBuild number @[static]
---@field DontUnloadUnusedAsset number @[static]
---@field DontSave number @[static]
---@field HideAndDontSave number @[static]
---@field value__ number
local HideFlags = {}

---@class FrustumPlanes
---@field left number
---@field right number
---@field bottom number
---@field top number
---@field zNear number
---@field zFar number
local FrustumPlanes = {}

---@class Plane
---@field normal Vector3
---@field distance number
---@field flipped Plane
local Plane = {}
---@param inNormal Vector3
---@param inPoint Vector3
function Plane:SetNormalAndPosition(inNormal, inPoint) end
---@param a Vector3
---@param b Vector3
---@param c Vector3
function Plane:Set3Points(a, b, c) end
function Plane:Flip() end
---@param translation Vector3
function Plane:Translate(translation) end
---@param point Vector3
---@return Vector3
function Plane:ClosestPointOnPlane(point) end
---@param point Vector3
---@return number
function Plane:GetDistanceToPoint(point) end
---@param point Vector3
---@return boolean
function Plane:GetSide(point) end
---@param inPt0 Vector3
---@param inPt1 Vector3
---@return boolean
function Plane:SameSide(inPt0, inPt1) end
---@param ray Ray
---@param enter Single&
---@return boolean
function Plane:Raycast(ray, enter) end
---@return string
function Plane:ToString() end
---@param format string
---@return string
function Plane:ToString(format) end
---@param plane Plane
---@param translation Vector3
---@return Plane
function Plane.Translate(plane, translation) end

---@class LightmapBakeType : Enum
---@field Realtime number @[static]
---@field Baked number @[static]
---@field Mixed number @[static]
---@field value__ number
local LightmapBakeType = {}

---@class MixedLightingMode : Enum
---@field IndirectOnly number @[static]
---@field Shadowmask number @[static]
---@field Subtractive number @[static]
---@field value__ number
local MixedLightingMode = {}

---@class AudioMixer : Object
---@field outputAudioMixerGroup AudioMixerGroup
---@field updateMode number
local AudioMixer = {}
---@param name string
---@return AudioMixerSnapshot
function AudioMixer:FindSnapshot(name) end
---@param subPath string
---@return AudioMixerGroup[]
function AudioMixer:FindMatchingGroups(subPath) end
---@param snapshots AudioMixerSnapshot[]
---@param weights number[]
---@param timeToReach number
function AudioMixer:TransitionToSnapshots(snapshots, weights, timeToReach) end
---@param name string
---@param value number
---@return boolean
function AudioMixer:SetFloat(name, value) end
---@param name string
---@return boolean
function AudioMixer:ClearFloat(name) end
---@param name string
---@param value Single&
---@return boolean
function AudioMixer:GetFloat(name, value) end

---@class Keyframe
---@field time number
---@field value number
---@field inTangent number
---@field outTangent number
---@field inWeight number
---@field outWeight number
---@field weightedMode number
local Keyframe = {}

---@class PhysicMaterialCombine : Enum
---@field Average number @[static]
---@field Minimum number @[static]
---@field Multiply number @[static]
---@field Maximum number @[static]
---@field value__ number
local PhysicMaterialCombine = {}

---@class AssetBundleLoadResult : Enum
---@field Success number @[static]
---@field Cancelled number @[static]
---@field NotMatchingCrc number @[static]
---@field FailedCache number @[static]
---@field NotValidAssetBundle number @[static]
---@field NoSerializedData number @[static]
---@field NotCompatible number @[static]
---@field AlreadyLoaded number @[static]
---@field FailedRead number @[static]
---@field FailedDecompression number @[static]
---@field FailedWrite number @[static]
---@field FailedDeleteRecompressionTarget number @[static]
---@field RecompressionTargetIsLoaded number @[static]
---@field RecompressionTargetExistsButNotArchive number @[static]
---@field value__ number
local AssetBundleLoadResult = {}

---@class MinMaxCurve
---@field mode number
---@field curveMultiplier number
---@field curveMax AnimationCurve
---@field curveMin AnimationCurve
---@field constantMax number
---@field constantMin number
---@field constant number
---@field curve AnimationCurve
local MinMaxCurve = {}
---@param time number
---@return number
function MinMaxCurve:Evaluate(time) end
---@param time number
---@param lerpFactor number
---@return number
function MinMaxCurve:Evaluate(time, lerpFactor) end

---@class MinMaxGradient
---@field mode number
---@field gradientMax Gradient
---@field gradientMin Gradient
---@field colorMax Color
---@field colorMin Color
---@field color Color
---@field gradient Gradient
local MinMaxGradient = {}
---@param time number
---@return Color
function MinMaxGradient:Evaluate(time) end
---@param time number
---@param lerpFactor number
---@return Color
function MinMaxGradient:Evaluate(time, lerpFactor) end

---@class ParticleSystemSimulationSpace : Enum
---@field Local number @[static]
---@field World number @[static]
---@field Custom number @[static]
---@field value__ number
local ParticleSystemSimulationSpace = {}

---@class ParticleSystemScalingMode : Enum
---@field Hierarchy number @[static]
---@field Local number @[static]
---@field Shape number @[static]
---@field value__ number
local ParticleSystemScalingMode = {}

---@class ParticleSystemEmitterVelocityMode : Enum
---@field Transform number @[static]
---@field Rigidbody number @[static]
---@field value__ number
local ParticleSystemEmitterVelocityMode = {}

---@class ParticleSystemStopAction : Enum
---@field None number @[static]
---@field Disable number @[static]
---@field Destroy number @[static]
---@field Callback number @[static]
---@field value__ number
local ParticleSystemStopAction = {}

---@class ParticleSystemRingBufferMode : Enum
---@field Disabled number @[static]
---@field PauseUntilReplaced number @[static]
---@field LoopUntilReplaced number @[static]
---@field value__ number
local ParticleSystemRingBufferMode = {}

---@class ParticleSystemCullingMode : Enum
---@field Automatic number @[static]
---@field PauseAndCatchup number @[static]
---@field Pause number @[static]
---@field AlwaysSimulate number @[static]
---@field value__ number
local ParticleSystemCullingMode = {}

---@class Burst
---@field time number
---@field count MinMaxCurve
---@field minCount number
---@field maxCount number
---@field cycleCount number
---@field repeatInterval number
---@field probability number
local Burst = {}

---@class ParticleSystemShapeType : Enum
---@field Sphere number @[static]
---@field Hemisphere number @[static]
---@field Cone number @[static]
---@field Box number @[static]
---@field Mesh number @[static]
---@field ConeVolume number @[static]
---@field Circle number @[static]
---@field SingleSidedEdge number @[static]
---@field MeshRenderer number @[static]
---@field SkinnedMeshRenderer number @[static]
---@field BoxShell number @[static]
---@field BoxEdge number @[static]
---@field Donut number @[static]
---@field Rectangle number @[static]
---@field Sprite number @[static]
---@field SpriteRenderer number @[static]
---@field value__ number
local ParticleSystemShapeType = {}

---@class ParticleSystemShapeMultiModeValue : Enum
---@field Random number @[static]
---@field Loop number @[static]
---@field PingPong number @[static]
---@field BurstSpread number @[static]
---@field value__ number
local ParticleSystemShapeMultiModeValue = {}

---@class ParticleSystemMeshShapeType : Enum
---@field Vertex number @[static]
---@field Edge number @[static]
---@field Triangle number @[static]
---@field value__ number
local ParticleSystemMeshShapeType = {}

---@class Sprite : Object
---@field bounds Bounds
---@field rect Rect
---@field border Vector4
---@field texture Texture2D
---@field pixelsPerUnit number
---@field spriteAtlasTextureScale number
---@field associatedAlphaSplitTexture Texture2D
---@field pivot Vector2
---@field packed boolean
---@field packingMode number
---@field packingRotation number
---@field textureRect Rect
---@field textureRectOffset Vector2
---@field vertices Vector2[]
---@field triangles number[]
---@field uv Vector2[]
local Sprite = {}
---@return number
function Sprite:GetPhysicsShapeCount() end
---@param shapeIdx number
---@return number
function Sprite:GetPhysicsShapePointCount(shapeIdx) end
---@param shapeIdx number
---@param physicsShape List<Vector2>
---@return number
function Sprite:GetPhysicsShape(shapeIdx, physicsShape) end
---@param physicsShapes IList<Vector2[]>
function Sprite:OverridePhysicsShape(physicsShapes) end
---@param vertices Vector2[]
---@param triangles number[]
function Sprite:OverrideGeometry(vertices, triangles) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@param pixelsPerUnit number
---@param extrude number
---@param meshType number
---@param border Vector4
---@param generateFallbackPhysicsShape boolean
---@return Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border, generateFallbackPhysicsShape) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@param pixelsPerUnit number
---@param extrude number
---@param meshType number
---@param border Vector4
---@return Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@param pixelsPerUnit number
---@param extrude number
---@param meshType number
---@return Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@param pixelsPerUnit number
---@param extrude number
---@return Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@param pixelsPerUnit number
---@return Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit) end
---@param texture Texture2D
---@param rect Rect
---@param pivot Vector2
---@return Sprite
function Sprite.Create(texture, rect, pivot) end

---@class SpriteRenderer : Renderer
---@field sprite Sprite
---@field drawMode number
---@field size Vector2
---@field adaptiveModeThreshold number
---@field tileMode number
---@field color Color
---@field maskInteraction number
---@field flipX boolean
---@field flipY boolean
---@field spriteSortPoint number
local SpriteRenderer = {}

---@class ParticleSystemShapeTextureChannel : Enum
---@field Red number @[static]
---@field Green number @[static]
---@field Blue number @[static]
---@field Alpha number @[static]
---@field value__ number
local ParticleSystemShapeTextureChannel = {}

---@class ParticleSystemInheritVelocityMode : Enum
---@field Initial number @[static]
---@field Current number @[static]
---@field value__ number
local ParticleSystemInheritVelocityMode = {}

---@class ParticleSystemGameObjectFilter : Enum
---@field LayerMask number @[static]
---@field List number @[static]
---@field LayerMaskAndList number @[static]
---@field value__ number
local ParticleSystemGameObjectFilter = {}

---@class LayerMask
---@field value number
local LayerMask = {}
---@param layer number
---@return string
function LayerMask.LayerToName(layer) end
---@param layerName string
---@return number
function LayerMask.NameToLayer(layerName) end
---@param layerNames string[]
---@return number
function LayerMask.GetMask(layerNames) end

---@class ParticleSystemForceField : Component
---@field shape number
---@field startRange number
---@field endRange number
---@field length number
---@field gravityFocus number
---@field rotationRandomness Vector2
---@field multiplyDragByParticleSize boolean
---@field multiplyDragByParticleVelocity boolean
---@field vectorField Texture3D
---@field directionX MinMaxCurve
---@field directionY MinMaxCurve
---@field directionZ MinMaxCurve
---@field gravity MinMaxCurve
---@field rotationSpeed MinMaxCurve
---@field rotationAttraction MinMaxCurve
---@field drag MinMaxCurve
---@field vectorFieldSpeed MinMaxCurve
---@field vectorFieldAttraction MinMaxCurve
local ParticleSystemForceField = {}
---@return ParticleSystemForceField[]
function ParticleSystemForceField.FindAll() end

---@class ParticleSystemNoiseQuality : Enum
---@field Low number @[static]
---@field Medium number @[static]
---@field High number @[static]
---@field value__ number
local ParticleSystemNoiseQuality = {}

---@class ParticleSystemCollisionType : Enum
---@field Planes number @[static]
---@field World number @[static]
---@field value__ number
local ParticleSystemCollisionType = {}

---@class ParticleSystemCollisionMode : Enum
---@field Collision3D number @[static]
---@field Collision2D number @[static]
---@field value__ number
local ParticleSystemCollisionMode = {}

---@class ParticleSystemCollisionQuality : Enum
---@field High number @[static]
---@field Medium number @[static]
---@field Low number @[static]
---@field value__ number
local ParticleSystemCollisionQuality = {}

---@class ParticleSystemOverlapAction : Enum
---@field Ignore number @[static]
---@field Kill number @[static]
---@field Callback number @[static]
---@field value__ number
local ParticleSystemOverlapAction = {}

---@class ParticleSystemAnimationMode : Enum
---@field Grid number @[static]
---@field Sprites number @[static]
---@field value__ number
local ParticleSystemAnimationMode = {}

---@class ParticleSystemAnimationTimeMode : Enum
---@field Lifetime number @[static]
---@field Speed number @[static]
---@field FPS number @[static]
---@field value__ number
local ParticleSystemAnimationTimeMode = {}

---@class ParticleSystemAnimationType : Enum
---@field WholeSheet number @[static]
---@field SingleRow number @[static]
---@field value__ number
local ParticleSystemAnimationType = {}

---@class ParticleSystemAnimationRowMode : Enum
---@field Custom number @[static]
---@field Random number @[static]
---@field MeshIndex number @[static]
---@field value__ number
local ParticleSystemAnimationRowMode = {}

---@class UVChannelFlags : Enum
---@field UV0 number @[static]
---@field UV1 number @[static]
---@field UV2 number @[static]
---@field UV3 number @[static]
---@field value__ number
local UVChannelFlags = {}

---@class ParticleSystemTrailMode : Enum
---@field PerParticle number @[static]
---@field Ribbon number @[static]
---@field value__ number
local ParticleSystemTrailMode = {}

---@class ParticleSystemTrailTextureMode : Enum
---@field Stretch number @[static]
---@field Tile number @[static]
---@field DistributePerSegment number @[static]
---@field RepeatPerSegment number @[static]
---@field value__ number
local ParticleSystemTrailTextureMode = {}

---@class ParticleSystemCustomDataMode : Enum
---@field Disabled number @[static]
---@field Vector number @[static]
---@field Color number @[static]
---@field value__ number
local ParticleSystemCustomDataMode = {}

---@class AnimatorControllerParameterType : Enum
---@field Float number @[static]
---@field Int number @[static]
---@field Bool number @[static]
---@field Trigger number @[static]
---@field value__ number
local AnimatorControllerParameterType = {}

---@class HumanDescription
---@field upperArmTwist number
---@field lowerArmTwist number
---@field upperLegTwist number
---@field lowerLegTwist number
---@field armStretch number
---@field legStretch number
---@field feetSpacing number
---@field hasTranslationDoF boolean
---@field human HumanBone[]
---@field skeleton SkeletonBone[]
local HumanDescription = {}

---@class DurationUnit : Enum
---@field Fixed number @[static]
---@field Normalized number @[static]
---@field value__ number
local DurationUnit = {}

---@class LocationServiceStatus : Enum
---@field Stopped number @[static]
---@field Initializing number @[static]
---@field Running number @[static]
---@field Failed number @[static]
---@field value__ number
local LocationServiceStatus = {}

---@class LocationInfo
---@field latitude number
---@field longitude number
---@field altitude number
---@field horizontalAccuracy number
---@field verticalAccuracy number
---@field timestamp number
local LocationInfo = {}

---@class TouchPhase : Enum
---@field Began number @[static]
---@field Moved number @[static]
---@field Stationary number @[static]
---@field Ended number @[static]
---@field Canceled number @[static]
---@field value__ number
local TouchPhase = {}

---@class TouchType : Enum
---@field Direct number @[static]
---@field Indirect number @[static]
---@field Stylus number @[static]
---@field value__ number
local TouchType = {}

---@class IndexFormat : Enum
---@field UInt16 number @[static]
---@field UInt32 number @[static]
---@field value__ number
local IndexFormat = {}

---@class BoneWeight
---@field weight0 number
---@field weight1 number
---@field weight2 number
---@field weight3 number
---@field boneIndex0 number
---@field boneIndex1 number
---@field boneIndex2 number
---@field boneIndex3 number
local BoneWeight = {}
---@return number
function BoneWeight:GetHashCode() end
---@param other Object
---@return boolean
function BoneWeight:Equals(other) end
---@param other BoneWeight
---@return boolean
function BoneWeight:Equals(other) end

---@class VertexAttributeDescriptor
---@field attribute number
---@field format number
---@field dimension number
---@field stream number
local VertexAttributeDescriptor = {}
---@return string
function VertexAttributeDescriptor:ToString() end
---@return number
function VertexAttributeDescriptor:GetHashCode() end
---@param other Object
---@return boolean
function VertexAttributeDescriptor:Equals(other) end
---@param other VertexAttributeDescriptor
---@return boolean
function VertexAttributeDescriptor:Equals(other) end

---@class VertexAttributeFormat : Enum
---@field Float32 number @[static]
---@field Float16 number @[static]
---@field UNorm8 number @[static]
---@field SNorm8 number @[static]
---@field UNorm16 number @[static]
---@field SNorm16 number @[static]
---@field UInt8 number @[static]
---@field SInt8 number @[static]
---@field UInt16 number @[static]
---@field SInt16 number @[static]
---@field UInt32 number @[static]
---@field SInt32 number @[static]
---@field value__ number
local VertexAttributeFormat = {}

---@class SubMeshDescriptor
---@field bounds Bounds
---@field topology number
---@field indexStart number
---@field indexCount number
---@field baseVertex number
---@field firstVertex number
---@field vertexCount number
local SubMeshDescriptor = {}
---@return string
function SubMeshDescriptor:ToString() end

---@class MeshTopology : Enum
---@field Triangles number @[static]
---@field Quads number @[static]
---@field Lines number @[static]
---@field LineStrip number @[static]
---@field Points number @[static]
---@field value__ number
local MeshTopology = {}

---@class SendMessageOptions : Enum
---@field RequireReceiver number @[static]
---@field DontRequireReceiver number @[static]
---@field value__ number
local SendMessageOptions = {}

---@class ScriptableObject : Object
local ScriptableObject = {}
---@param className string
---@return ScriptableObject
function ScriptableObject.CreateInstance(className) end
---@param type Type
---@return ScriptableObject
function ScriptableObject.CreateInstance(type) end
---@return T
function ScriptableObject.CreateInstance() end

---@class TerrainData : Object
---@field AlphamapTextureName string @[static]
---@field HolesTextureName string @[static]
---@field heightmapTexture RenderTexture
---@field heightmapResolution number
---@field heightmapScale Vector3
---@field holesTexture Texture
---@field enableHolesTextureCompression boolean
---@field holesResolution number
---@field size Vector3
---@field bounds Bounds
---@field wavingGrassStrength number
---@field wavingGrassAmount number
---@field wavingGrassSpeed number
---@field wavingGrassTint Color
---@field detailWidth number
---@field detailHeight number
---@field detailPatchCount number
---@field detailResolution number
---@field detailResolutionPerPatch number
---@field detailPrototypes DetailPrototype[]
---@field treeInstances TreeInstance[]
---@field treeInstanceCount number
---@field treePrototypes TreePrototype[]
---@field alphamapLayers number
---@field alphamapResolution number
---@field alphamapWidth number
---@field alphamapHeight number
---@field baseMapResolution number
---@field alphamapTextureCount number
---@field alphamapTextures Texture2D[]
---@field terrainLayers TerrainLayer[]
local TerrainData = {}
---@param x number
---@param y number
---@return number
function TerrainData:GetHeight(x, y) end
---@param x number
---@param y number
---@return number
function TerrainData:GetInterpolatedHeight(x, y) end
---@param xBase number
---@param yBase number
---@param xCount number
---@param yCount number
---@param xInterval number
---@param yInterval number
---@return number[,]
function TerrainData:GetInterpolatedHeights(xBase, yBase, xCount, yCount, xInterval, yInterval) end
---@param results number[,]
---@param resultXOffset number
---@param resultYOffset number
---@param xBase number
---@param yBase number
---@param xCount number
---@param yCount number
---@param xInterval number
---@param yInterval number
function TerrainData:GetInterpolatedHeights(results, resultXOffset, resultYOffset, xBase, yBase, xCount, yCount, xInterval, yInterval) end
---@param xBase number
---@param yBase number
---@param width number
---@param height number
---@return number[,]
function TerrainData:GetHeights(xBase, yBase, width, height) end
---@param xBase number
---@param yBase number
---@param heights number[,]
function TerrainData:SetHeights(xBase, yBase, heights) end
---@return PatchExtents[]
function TerrainData:GetPatchMinMaxHeights() end
---@param minMaxHeights PatchExtents[]
function TerrainData:OverrideMinMaxPatchHeights(minMaxHeights) end
---@return number[]
function TerrainData:GetMaximumHeightError() end
---@param maxError number[]
function TerrainData:OverrideMaximumHeightError(maxError) end
---@param xBase number
---@param yBase number
---@param heights number[,]
function TerrainData:SetHeightsDelayLOD(xBase, yBase, heights) end
---@param x number
---@param y number
---@return boolean
function TerrainData:IsHole(x, y) end
---@param xBase number
---@param yBase number
---@param width number
---@param height number
---@return boolean[,]
function TerrainData:GetHoles(xBase, yBase, width, height) end
---@param xBase number
---@param yBase number
---@param holes boolean[,]
function TerrainData:SetHoles(xBase, yBase, holes) end
---@param xBase number
---@param yBase number
---@param holes boolean[,]
function TerrainData:SetHolesDelayLOD(xBase, yBase, holes) end
---@param x number
---@param y number
---@return number
function TerrainData:GetSteepness(x, y) end
---@param x number
---@param y number
---@return Vector3
function TerrainData:GetInterpolatedNormal(x, y) end
---@param detailResolution number
---@param resolutionPerPatch number
function TerrainData:SetDetailResolution(detailResolution, resolutionPerPatch) end
function TerrainData:RefreshPrototypes() end
---@param xBase number
---@param yBase number
---@param totalWidth number
---@param totalHeight number
---@return number[]
function TerrainData:GetSupportedLayers(xBase, yBase, totalWidth, totalHeight) end
---@param xBase number
---@param yBase number
---@param width number
---@param height number
---@param layer number
---@return number[,]
function TerrainData:GetDetailLayer(xBase, yBase, width, height, layer) end
---@param xBase number
---@param yBase number
---@param layer number
---@param details number[,]
function TerrainData:SetDetailLayer(xBase, yBase, layer, details) end
---@param instances TreeInstance[]
---@param snapToHeightmap boolean
function TerrainData:SetTreeInstances(instances, snapToHeightmap) end
---@param index number
---@return TreeInstance
function TerrainData:GetTreeInstance(index) end
---@param index number
---@param instance TreeInstance
function TerrainData:SetTreeInstance(index, instance) end
---@param x number
---@param y number
---@param width number
---@param height number
---@return number[,,]
function TerrainData:GetAlphamaps(x, y, width, height) end
---@param x number
---@param y number
---@param map number[,,]
function TerrainData:SetAlphamaps(x, y, map) end
function TerrainData:SetBaseMapDirty() end
---@param index number
---@return Texture2D
function TerrainData:GetAlphamapTexture(index) end
---@param terrainLayers TerrainLayer[]
---@param undoName string
function TerrainData:SetTerrainLayersRegisterUndo(terrainLayers, undoName) end
function TerrainData:SyncHeightmap() end
---@param sourceRect RectInt
---@param dest Vector2Int
---@param syncControl number
function TerrainData:CopyActiveRenderTextureToHeightmap(sourceRect, dest, syncControl) end
---@param region RectInt
---@param syncControl number
function TerrainData:DirtyHeightmapRegion(region, syncControl) end
---@param textureName string
---@param textureIndex number
---@param sourceRect RectInt
---@param dest Vector2Int
---@param allowDelayedCPUSync boolean
function TerrainData:CopyActiveRenderTextureToTexture(textureName, textureIndex, sourceRect, dest, allowDelayedCPUSync) end
---@param textureName string
---@param region RectInt
---@param allowDelayedCPUSync boolean
function TerrainData:DirtyTextureRegion(textureName, region, allowDelayedCPUSync) end
---@param textureName string
function TerrainData:SyncTexture(textureName) end

---@class TerrainRenderFlags : Enum
---@field Heightmap number @[static]
---@field Trees number @[static]
---@field Details number @[static]
---@field All number @[static]
---@field value__ number
local TerrainRenderFlags = {}

---@class LuaFunction : LuaBaseRef
local LuaFunction = {}
function LuaFunction:Dispose() end
---@return T
function LuaFunction:ToDelegate() end
---@return number
function LuaFunction:BeginPCall() end
function LuaFunction:PCall() end
function LuaFunction:EndPCall() end
function LuaFunction:Call() end
---@param arg1 T1
function LuaFunction:Call(arg1) end
---@param arg1 T1
---@param arg2 T2
function LuaFunction:Call(arg1, arg2) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
function LuaFunction:Call(arg1, arg2, arg3) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
function LuaFunction:Call(arg1, arg2, arg3, arg4) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
function LuaFunction:Call(arg1, arg2, arg3, arg4, arg5) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
function LuaFunction:Call(arg1, arg2, arg3, arg4, arg5, arg6) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
function LuaFunction:Call(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
function LuaFunction:Call(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@param arg9 T9
function LuaFunction:Call(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end
---@return R1
function LuaFunction:Invoke() end
---@param arg1 T1
---@return R1
function LuaFunction:Invoke(arg1) end
---@param arg1 T1
---@param arg2 T2
---@return R1
function LuaFunction:Invoke(arg1, arg2) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4, arg5) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4, arg5, arg6) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@param arg9 T9
---@return R1
function LuaFunction:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end
---@param args number
function LuaFunction:CheckStack(args) end
---@return boolean
function LuaFunction:IsBegin() end
---@param num number
function LuaFunction:Push(num) end
---@param n number
function LuaFunction:Push(n) end
---@param n LayerMask
function LuaFunction:PushLayerMask(n) end
---@param un number
function LuaFunction:Push(un) end
---@param num number
function LuaFunction:Push(num) end
---@param un number
function LuaFunction:Push(un) end
---@param b boolean
function LuaFunction:Push(b) end
---@param str string
function LuaFunction:Push(str) end
---@param ptr IntPtr
function LuaFunction:Push(ptr) end
---@param lbr LuaBaseRef
function LuaFunction:Push(lbr) end
---@param o Object
function LuaFunction:Push(o) end
---@param o Object
function LuaFunction:Push(o) end
---@param t Type
function LuaFunction:Push(t) end
---@param e Enum
function LuaFunction:Push(e) end
---@param array Array
function LuaFunction:Push(array) end
---@param v3 Vector3
function LuaFunction:Push(v3) end
---@param v2 Vector2
function LuaFunction:Push(v2) end
---@param v4 Vector4
function LuaFunction:Push(v4) end
---@param quat Quaternion
function LuaFunction:Push(quat) end
---@param clr Color
function LuaFunction:Push(clr) end
---@param ray Ray
function LuaFunction:Push(ray) end
---@param bounds Bounds
function LuaFunction:Push(bounds) end
---@param hit RaycastHit
function LuaFunction:Push(hit) end
---@param t Touch
function LuaFunction:Push(t) end
---@param buffer LuaByteBuffer
function LuaFunction:Push(buffer) end
---@param value T
function LuaFunction:PushValue(value) end
---@param o Object
function LuaFunction:PushObject(o) end
---@param o T
function LuaFunction:PushSealed(o) end
---@param t T
function LuaFunction:PushGeneric(t) end
---@param args Object[]
function LuaFunction:PushArgs(args) end
---@param buffer number[]
---@param len number
function LuaFunction:PushByteBuffer(buffer, len) end
---@return number
function LuaFunction:CheckNumber() end
---@return boolean
function LuaFunction:CheckBoolean() end
---@return string
function LuaFunction:CheckString() end
---@return Vector3
function LuaFunction:CheckVector3() end
---@return Quaternion
function LuaFunction:CheckQuaternion() end
---@return Vector2
function LuaFunction:CheckVector2() end
---@return Vector4
function LuaFunction:CheckVector4() end
---@return Color
function LuaFunction:CheckColor() end
---@return Ray
function LuaFunction:CheckRay() end
---@return Bounds
function LuaFunction:CheckBounds() end
---@return LayerMask
function LuaFunction:CheckLayerMask() end
---@return number
function LuaFunction:CheckLong() end
---@return number
function LuaFunction:CheckULong() end
---@return Delegate
function LuaFunction:CheckDelegate() end
---@return Object
function LuaFunction:CheckVariant() end
---@return number[]
function LuaFunction:CheckCharBuffer() end
---@return number[]
function LuaFunction:CheckByteBuffer() end
---@param t Type
---@return Object
function LuaFunction:CheckObject(t) end
---@return LuaFunction
function LuaFunction:CheckLuaFunction() end
---@return LuaTable
function LuaFunction:CheckLuaTable() end
---@return LuaThread
function LuaFunction:CheckLuaThread() end
---@return T
function LuaFunction:CheckValue() end

---@class ANode
---@field X number
---@field Y number
---@field G number
---@field H number
---@field F number
---@field cost number
---@field Parent ANode
---@field Next ANode
local ANode = {}
function ANode:Reset() end
---@return number
function ANode:GetKey() end
---@param node ANode
---@return number
function ANode.Key(node) end
---@param x number
---@param y number
---@return number
function ANode.Key(x, y) end

---@class AudioMixerUpdateMode : Enum
---@field Normal number @[static]
---@field UnscaledTime number @[static]
---@field value__ number
local AudioMixerUpdateMode = {}

---@class AudioMixerSnapshot : Object
---@field audioMixer AudioMixer
local AudioMixerSnapshot = {}
---@param timeToReach number
function AudioMixerSnapshot:TransitionTo(timeToReach) end

---@class WeightedMode : Enum
---@field None number @[static]
---@field In number @[static]
---@field Out number @[static]
---@field Both number @[static]
---@field value__ number
local WeightedMode = {}

---@class ParticleSystemCurveMode : Enum
---@field Constant number @[static]
---@field Curve number @[static]
---@field TwoCurves number @[static]
---@field TwoConstants number @[static]
---@field value__ number
local ParticleSystemCurveMode = {}

---@class ParticleSystemGradientMode : Enum
---@field Color number @[static]
---@field Gradient number @[static]
---@field TwoColors number @[static]
---@field TwoGradients number @[static]
---@field RandomColor number @[static]
---@field value__ number
local ParticleSystemGradientMode = {}

---@class Gradient
---@field colorKeys GradientColorKey[]
---@field alphaKeys GradientAlphaKey[]
---@field mode number
local Gradient = {}
---@param time number
---@return Color
function Gradient:Evaluate(time) end
---@param colorKeys GradientColorKey[]
---@param alphaKeys GradientAlphaKey[]
function Gradient:SetKeys(colorKeys, alphaKeys) end
---@param o Object
---@return boolean
function Gradient:Equals(o) end
---@param other Gradient
---@return boolean
function Gradient:Equals(other) end
---@return number
function Gradient:GetHashCode() end

---@class SpritePackingMode : Enum
---@field Tight number @[static]
---@field Rectangle number @[static]
---@field value__ number
local SpritePackingMode = {}

---@class SpritePackingRotation : Enum
---@field None number @[static]
---@field FlipHorizontal number @[static]
---@field FlipVertical number @[static]
---@field Rotate180 number @[static]
---@field Any number @[static]
---@field value__ number
local SpritePackingRotation = {}

---@class SpriteDrawMode : Enum
---@field Simple number @[static]
---@field Sliced number @[static]
---@field Tiled number @[static]
---@field value__ number
local SpriteDrawMode = {}

---@class SpriteTileMode : Enum
---@field Continuous number @[static]
---@field Adaptive number @[static]
---@field value__ number
local SpriteTileMode = {}

---@class SpriteMaskInteraction : Enum
---@field None number @[static]
---@field VisibleInsideMask number @[static]
---@field VisibleOutsideMask number @[static]
---@field value__ number
local SpriteMaskInteraction = {}

---@class SpriteSortPoint : Enum
---@field Center number @[static]
---@field Pivot number @[static]
---@field value__ number
local SpriteSortPoint = {}

---@class ParticleSystemForceFieldShape : Enum
---@field Sphere number @[static]
---@field Hemisphere number @[static]
---@field Cylinder number @[static]
---@field Box number @[static]
---@field value__ number
local ParticleSystemForceFieldShape = {}

---@class Texture3D : Texture
---@field depth number
---@field format number
---@field isReadable boolean
local Texture3D = {}
---@param miplevel number
---@return Color[]
function Texture3D:GetPixels(miplevel) end
---@return Color[]
function Texture3D:GetPixels() end
---@param miplevel number
---@return Color32[]
function Texture3D:GetPixels32(miplevel) end
---@return Color32[]
function Texture3D:GetPixels32() end
---@param colors Color[]
---@param miplevel number
function Texture3D:SetPixels(colors, miplevel) end
---@param colors Color[]
function Texture3D:SetPixels(colors) end
---@param colors Color32[]
---@param miplevel number
function Texture3D:SetPixels32(colors, miplevel) end
---@param colors Color32[]
function Texture3D:SetPixels32(colors) end
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function Texture3D:Apply(updateMipmaps, makeNoLongerReadable) end
---@param updateMipmaps boolean
function Texture3D:Apply(updateMipmaps) end
function Texture3D:Apply() end
---@param x number
---@param y number
---@param z number
---@param color Color
function Texture3D:SetPixel(x, y, z, color) end
---@param x number
---@param y number
---@param z number
---@param color Color
---@param mipLevel number
function Texture3D:SetPixel(x, y, z, color, mipLevel) end
---@param x number
---@param y number
---@param z number
---@return Color
function Texture3D:GetPixel(x, y, z) end
---@param x number
---@param y number
---@param z number
---@param mipLevel number
---@return Color
function Texture3D:GetPixel(x, y, z, mipLevel) end
---@param u number
---@param v number
---@param w number
---@return Color
function Texture3D:GetPixelBilinear(u, v, w) end
---@param u number
---@param v number
---@param w number
---@param mipLevel number
---@return Color
function Texture3D:GetPixelBilinear(u, v, w, mipLevel) end
---@param data T[]
---@param mipLevel number
---@param sourceDataStartIndex number
function Texture3D:SetPixelData(data, mipLevel, sourceDataStartIndex) end
---@param data NativeArray<T>
---@param mipLevel number
---@param sourceDataStartIndex number
function Texture3D:SetPixelData(data, mipLevel, sourceDataStartIndex) end

---@class HumanBone
---@field boneName string
---@field humanName string
---@field limit HumanLimit
local HumanBone = {}

---@class SkeletonBone
---@field name string
---@field position Vector3
---@field rotation Quaternion
---@field scale Vector3
local SkeletonBone = {}

---@class VertexAttribute : Enum
---@field Position number @[static]
---@field Normal number @[static]
---@field Tangent number @[static]
---@field Color number @[static]
---@field TexCoord0 number @[static]
---@field TexCoord1 number @[static]
---@field TexCoord2 number @[static]
---@field TexCoord3 number @[static]
---@field TexCoord4 number @[static]
---@field TexCoord5 number @[static]
---@field TexCoord6 number @[static]
---@field TexCoord7 number @[static]
---@field BlendWeight number @[static]
---@field BlendIndices number @[static]
---@field value__ number
local VertexAttribute = {}

---@class DetailPrototype
---@field prototype GameObject
---@field prototypeTexture Texture2D
---@field minWidth number
---@field maxWidth number
---@field minHeight number
---@field maxHeight number
---@field noiseSpread number
---@field bendFactor number
---@field healthyColor Color
---@field dryColor Color
---@field renderMode number
---@field usePrototypeMesh boolean
local DetailPrototype = {}
---@param obj Object
---@return boolean
function DetailPrototype:Equals(obj) end
---@return number
function DetailPrototype:GetHashCode() end

---@class TreeInstance
---@field position Vector3
---@field widthScale number
---@field heightScale number
---@field rotation number
---@field color Color32
---@field lightmapColor Color32
---@field prototypeIndex number
local TreeInstance = {}

---@class TreePrototype
---@field prefab GameObject
---@field bendFactor number
local TreePrototype = {}
---@param obj Object
---@return boolean
function TreePrototype:Equals(obj) end
---@return number
function TreePrototype:GetHashCode() end

---@class TerrainLayer : Object
---@field diffuseTexture Texture2D
---@field normalMapTexture Texture2D
---@field maskMapTexture Texture2D
---@field tileSize Vector2
---@field tileOffset Vector2
---@field specular Color
---@field metallic number
---@field smoothness number
---@field normalScale number
---@field diffuseRemapMin Vector4
---@field diffuseRemapMax Vector4
---@field maskMapRemapMin Vector4
---@field maskMapRemapMax Vector4
local TerrainLayer = {}

---@class PatchExtents
---@field min number
---@field max number
local PatchExtents = {}

---@class Delegate
---@field Method MethodInfo
---@field Target Object
local Delegate = {}
---@param args Object[]
---@return Object
function Delegate:DynamicInvoke(args) end
---@return Object
function Delegate:Clone() end
---@param obj Object
---@return boolean
function Delegate:Equals(obj) end
---@return number
function Delegate:GetHashCode() end
---@param info SerializationInfo
---@param context StreamingContext
function Delegate:GetObjectData(info, context) end
---@return Delegate[]
function Delegate:GetInvocationList() end
---@param type Type
---@param firstArgument Object
---@param method MethodInfo
---@param throwOnBindFailure boolean
---@return Delegate
function Delegate.CreateDelegate(type, firstArgument, method, throwOnBindFailure) end
---@param type Type
---@param firstArgument Object
---@param method MethodInfo
---@return Delegate
function Delegate.CreateDelegate(type, firstArgument, method) end
---@param type Type
---@param method MethodInfo
---@param throwOnBindFailure boolean
---@return Delegate
function Delegate.CreateDelegate(type, method, throwOnBindFailure) end
---@param type Type
---@param method MethodInfo
---@return Delegate
function Delegate.CreateDelegate(type, method) end
---@param type Type
---@param target Object
---@param method string
---@return Delegate
function Delegate.CreateDelegate(type, target, method) end
---@param type Type
---@param target Type
---@param method string
---@param ignoreCase boolean
---@param throwOnBindFailure boolean
---@return Delegate
function Delegate.CreateDelegate(type, target, method, ignoreCase, throwOnBindFailure) end
---@param type Type
---@param target Type
---@param method string
---@return Delegate
function Delegate.CreateDelegate(type, target, method) end
---@param type Type
---@param target Type
---@param method string
---@param ignoreCase boolean
---@return Delegate
function Delegate.CreateDelegate(type, target, method, ignoreCase) end
---@param type Type
---@param target Object
---@param method string
---@param ignoreCase boolean
---@param throwOnBindFailure boolean
---@return Delegate
function Delegate.CreateDelegate(type, target, method, ignoreCase, throwOnBindFailure) end
---@param type Type
---@param target Object
---@param method string
---@param ignoreCase boolean
---@return Delegate
function Delegate.CreateDelegate(type, target, method, ignoreCase) end
---@param a Delegate
---@param b Delegate
---@return Delegate
function Delegate.Combine(a, b) end
---@param delegates Delegate[]
---@return Delegate
function Delegate.Combine(delegates) end
---@param source Delegate
---@param value Delegate
---@return Delegate
function Delegate.Remove(source, value) end
---@param source Delegate
---@param value Delegate
---@return Delegate
function Delegate.RemoveAll(source, value) end

---@class LuaThread : LuaBaseRef
local LuaThread = {}
---@return number
function LuaThread:Resume() end
---@param arg1 T1
---@return number
function LuaThread:Resume(arg1) end
---@param arg1 T1
---@param arg2 T2
---@return number
function LuaThread:Resume(arg1, arg2) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@return number
function LuaThread:Resume(arg1, arg2, arg3) end
---@param ret1 R1&
---@return number
function LuaThread:Resume(ret1) end
---@param arg1 T1
---@param ret1 R1&
---@return number
function LuaThread:Resume(arg1, ret1) end
---@param arg1 T1
---@param arg2 T2
---@param ret1 R1&
---@return number
function LuaThread:Resume(arg1, arg2, ret1) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param ret1 R1&
---@return number
function LuaThread:Resume(arg1, arg2, arg3, ret1) end

---@class LuaBaseRef
---@field name string
---@field IsAlive boolean
local LuaBaseRef = {}
function LuaBaseRef:Dispose() end
function LuaBaseRef:AddRef() end
---@param disposeManagedResources boolean
function LuaBaseRef:Dispose(disposeManagedResources) end
---@param generation number
function LuaBaseRef:Dispose(generation) end
---@return LuaState
function LuaBaseRef:GetLuaState() end
function LuaBaseRef:Push() end
---@return number
function LuaBaseRef:GetHashCode() end
---@return number
function LuaBaseRef:GetReference() end
---@param o Object
---@return boolean
function LuaBaseRef:Equals(o) end

---@class GradientColorKey
---@field color Color
---@field time number
local GradientColorKey = {}

---@class GradientAlphaKey
---@field alpha number
---@field time number
local GradientAlphaKey = {}

---@class GradientMode : Enum
---@field Blend number @[static]
---@field Fixed number @[static]
---@field value__ number
local GradientMode = {}

---@class HumanLimit
---@field useDefaultValues boolean
---@field min Vector3
---@field max Vector3
---@field center Vector3
---@field axisLength number
local HumanLimit = {}

---@class DetailRenderMode : Enum
---@field GrassBillboard number @[static]
---@field VertexLit number @[static]
---@field Grass number @[static]
---@field value__ number
local DetailRenderMode = {}

---@class LuaState
---@field ArrayMetatable number
---@field DelegateMetatable number
---@field TypeMetatable number
---@field EnumMetatable number
---@field IterMetatable number
---@field EventMetatable number
---@field PackBounds number
---@field UnpackBounds number
---@field PackRay number
---@field UnpackRay number
---@field PackRaycastHit number
---@field PackTouch number
---@field LogGC boolean
---@field Item Object
---@field translator ObjectTranslator
---@field reflection LuaReflection
---@field OnDestroy Action
local LuaState = {}
function LuaState:Start() end
---@param open LuaCSFunction
---@return number
function LuaState:OpenLibs(open) end
function LuaState:BeginPreLoad() end
function LuaState:EndPreLoad() end
---@param name string
---@param func LuaCSFunction
---@param type Type
function LuaState:AddPreLoad(name, func, type) end
---@param name string
---@param func LuaCSFunction
function LuaState:AddPreLoad(name, func) end
---@param name string
---@return number
function LuaState:BeginPreModule(name) end
---@param reference number
function LuaState:EndPreModule(reference) end
---@param L IntPtr
---@param reference number
function LuaState:EndPreModule(L, reference) end
---@param t Type
---@param func LuaCSFunction
function LuaState:BindPreModule(t, func) end
---@param t Type
---@return LuaCSFunction
function LuaState:GetPreModule(t) end
---@param name string
---@return boolean
function LuaState:BeginModule(name) end
function LuaState:EndModule() end
---@param reference number
---@return Type
function LuaState:GetClassType(reference) end
---@param t Type
---@param baseType Type
---@param name string
---@return number
function LuaState:BeginClass(t, baseType, name) end
function LuaState:EndClass() end
---@param t Type
---@return number
function LuaState:BeginEnum(t) end
function LuaState:EndEnum() end
---@param name string
function LuaState:BeginStaticLibs(name) end
function LuaState:EndStaticLibs() end
---@param name string
---@param func LuaCSFunction
function LuaState:RegFunction(name, func) end
---@param name string
---@param get LuaCSFunction
---@param set LuaCSFunction
function LuaState:RegVar(name, get, set) end
---@param name string
---@param d number
function LuaState:RegConstant(name, d) end
---@param name string
---@param flag boolean
function LuaState:RegConstant(name, flag) end
---@param chunk string
---@param chunkName string
function LuaState:DoString(chunk, chunkName) end
---@param chunk string
---@param chunkName string
---@return T
function LuaState:DoString(chunk, chunkName) end
---@param fileName string
function LuaState:DoFile(fileName) end
---@param fileName string
---@return T
function LuaState:DoFile(fileName) end
---@param fileName string
function LuaState:Require(fileName) end
---@param fileName string
---@return T
function LuaState:Require(fileName) end
function LuaState:InitPackagePath() end
---@param fullPath string
function LuaState:AddSearchPath(fullPath) end
---@param fullPath string
function LuaState:RemoveSeachPath(fullPath) end
---@param reference number
---@return number
function LuaState:BeginPCall(reference) end
---@param args number
---@param oldTop number
function LuaState:PCall(args, oldTop) end
---@param oldTop number
function LuaState:EndPCall(oldTop) end
---@param args Object[]
function LuaState:PushArgs(args) end
---@param name string
---@param beLogMiss boolean
---@return LuaFunction
function LuaState:GetFunction(name, beLogMiss) end
---@param reference number
---@return LuaFunction
function LuaState:GetFunction(reference) end
---@param fullPath string
---@param beLogMiss boolean
---@return LuaTable
function LuaState:GetTable(fullPath, beLogMiss) end
---@param reference number
---@return LuaTable
function LuaState:GetTable(reference) end
---@param reference number
---@return LuaThread
function LuaState:GetLuaThread(reference) end
---@param func LuaFunction
---@return LuaDelegate
function LuaState:GetLuaDelegate(func) end
---@param func LuaFunction
---@param self LuaTable
---@return LuaDelegate
function LuaState:GetLuaDelegate(func, self) end
---@param target LuaDelegate
---@param func LuaFunction
function LuaState:AddLuaDelegate(target, func) end
---@param target LuaDelegate
---@param func LuaFunction
---@param self LuaTable
function LuaState:AddLuaDelegate(target, func, self) end
---@return boolean
function LuaState:CheckTop() end
---@param b boolean
function LuaState:Push(b) end
---@param d number
function LuaState:Push(d) end
---@param un number
function LuaState:Push(un) end
---@param n number
function LuaState:Push(n) end
---@param s number
function LuaState:Push(s) end
---@param us number
function LuaState:Push(us) end
---@param l number
function LuaState:Push(l) end
---@param ul number
function LuaState:Push(ul) end
---@param str string
function LuaState:Push(str) end
---@param p IntPtr
function LuaState:Push(p) end
---@param v3 Vector3
function LuaState:Push(v3) end
---@param v2 Vector2
function LuaState:Push(v2) end
---@param v4 Vector4
function LuaState:Push(v4) end
---@param clr Color
function LuaState:Push(clr) end
---@param q Quaternion
function LuaState:Push(q) end
---@param ray Ray
function LuaState:Push(ray) end
---@param bound Bounds
function LuaState:Push(bound) end
---@param hit RaycastHit
function LuaState:Push(hit) end
---@param touch Touch
function LuaState:Push(touch) end
---@param mask LayerMask
function LuaState:PushLayerMask(mask) end
---@param bb LuaByteBuffer
function LuaState:Push(bb) end
---@param buffer number[]
function LuaState:PushByteBuffer(buffer) end
---@param buffer number[]
---@param len number
function LuaState:PushByteBuffer(buffer, len) end
---@param lbr LuaBaseRef
function LuaState:Push(lbr) end
---@param array Array
function LuaState:Push(array) end
---@param t Type
function LuaState:Push(t) end
---@param ev Delegate
function LuaState:Push(ev) end
---@param e Enum
---@return Object
function LuaState:GetEnumObj(e) end
---@param e Enum
function LuaState:Push(e) end
---@param iter IEnumerator
function LuaState:Push(iter) end
---@param obj Object
function LuaState:Push(obj) end
---@param tracker TrackedReference
function LuaState:Push(tracker) end
---@param obj Object
function LuaState:PushVariant(obj) end
---@param obj Object
function LuaState:PushObject(obj) end
---@param o T
function LuaState:PushSealed(o) end
---@param v T
function LuaState:PushValue(v) end
---@param o T
function LuaState:PushGeneric(o) end
---@param stackPos number
---@return Vector3
function LuaState:CheckVector3(stackPos) end
---@param stackPos number
---@return Quaternion
function LuaState:CheckQuaternion(stackPos) end
---@param stackPos number
---@return Vector2
function LuaState:CheckVector2(stackPos) end
---@param stackPos number
---@return Vector4
function LuaState:CheckVector4(stackPos) end
---@param stackPos number
---@return Color
function LuaState:CheckColor(stackPos) end
---@param stackPos number
---@return Ray
function LuaState:CheckRay(stackPos) end
---@param stackPos number
---@return Bounds
function LuaState:CheckBounds(stackPos) end
---@param stackPos number
---@return LayerMask
function LuaState:CheckLayerMask(stackPos) end
---@param stackPos number
---@return number
function LuaState:CheckLong(stackPos) end
---@param stackPos number
---@return number
function LuaState:CheckULong(stackPos) end
---@param stackPos number
---@return string
function LuaState:CheckString(stackPos) end
---@param stackPos number
---@return Delegate
function LuaState:CheckDelegate(stackPos) end
---@param stackPos number
---@return number[]
function LuaState:CheckCharBuffer(stackPos) end
---@param stackPos number
---@return number[]
function LuaState:CheckByteBuffer(stackPos) end
---@param stackPos number
---@return T[]
function LuaState:CheckNumberArray(stackPos) end
---@param stackPos number
---@param type Type
---@return Object
function LuaState:CheckObject(stackPos, type) end
---@param stackPos number
---@param type Type
---@return Object
function LuaState:CheckVarObject(stackPos, type) end
---@param oldTop number
---@return Object[]
function LuaState:CheckObjects(oldTop) end
---@param stackPos number
---@return LuaFunction
function LuaState:CheckLuaFunction(stackPos) end
---@param stackPos number
---@return LuaTable
function LuaState:CheckLuaTable(stackPos) end
---@param stackPos number
---@return LuaThread
function LuaState:CheckLuaThread(stackPos) end
---@param stackPos number
---@return T
function LuaState:CheckValue(stackPos) end
---@param stackPos number
---@return Object
function LuaState:ToVariant(stackPos) end
---@param reference number
---@param name string
---@param isGCThread boolean
function LuaState:CollectRef(reference, name, isGCThread) end
---@param br LuaBaseRef
function LuaState:DelayDispose(br) end
---@return number
function LuaState:Collect() end
function LuaState:StepCollect() end
function LuaState:RefreshDelegateMap() end
---@param fullPath string
function LuaState:NewTable(fullPath) end
---@param narr number
---@param nrec number
---@return LuaTable
function LuaState:NewTable(narr, nrec) end
---@param moduleFileName string
function LuaState:ReLoad(moduleFileName) end
---@param t Type
---@return number
function LuaState:GetMetaReference(t) end
---@param t Type
---@return number
function LuaState:GetMissMetaReference(t) end
function LuaState:Dispose() end
---@return number
function LuaState:GetHashCode() end
---@param o Object
---@return boolean
function LuaState:Equals(o) end
---@param name string
function LuaState:PrintTable(name) end
---@param name string
---@param top number
---@param beLogMiss boolean
---@return boolean
function LuaState:BeginCall(name, top, beLogMiss) end
---@param nArgs number
---@param errfunc number
---@param top number
function LuaState:Call(nArgs, errfunc, top) end
---@param name string
---@param beLogMiss boolean
function LuaState:Call(name, beLogMiss) end
---@param name string
---@param arg1 T
---@param beLogMiss boolean
function LuaState:Call(name, arg1, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param beLogMiss boolean
function LuaState:Call(name, arg1, arg2, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param beLogMiss boolean
function LuaState:Call(name, arg1, arg2, arg3, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param beLogMiss boolean
function LuaState:Call(name, arg1, arg2, arg3, arg4, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param beLogMiss boolean
function LuaState:Call(name, arg1, arg2, arg3, arg4, arg5, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param beLogMiss boolean
function LuaState:Call(name, arg1, arg2, arg3, arg4, arg5, arg6, beLogMiss) end
---@param name string
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, beLogMiss) end
---@param name string
---@param arg1 T1
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, arg2, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, arg2, arg3, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, arg2, arg3, arg4, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, arg2, arg3, arg4, arg5, beLogMiss) end
---@param name string
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param beLogMiss boolean
---@return R1
function LuaState:Invoke(name, arg1, arg2, arg3, arg4, arg5, arg6, beLogMiss) end
---@param index number
---@return boolean
function LuaState.GetInjectInitState(index) end
---@param ptr IntPtr
---@return LuaState
function LuaState.Get(ptr) end
---@param ptr IntPtr
---@return ObjectTranslator
function LuaState.GetTranslator(ptr) end
---@param ptr IntPtr
---@return LuaReflection
function LuaState.GetReflection(ptr) end

---@class ObjectTranslator
---@field LogGC boolean
---@field objectsBackMap Dictionary<Object,number>
---@field objects LuaObjectPool
local ObjectTranslator = {}
---@param obj Object
---@return number
function ObjectTranslator:AddObject(obj) end
---@param udata number
function ObjectTranslator:RemoveObject(udata) end
---@param udata number
---@return Object
function ObjectTranslator:GetObject(udata) end
---@param udata number
function ObjectTranslator:Destroy(udata) end
---@param id number
---@param time number
function ObjectTranslator:DelayDestroy(id, time) end
---@param o Object
---@param index Int32&
---@return boolean
function ObjectTranslator:Getudata(o, index) end
---@param udata number
function ObjectTranslator:Destroyudata(udata) end
---@param index number
---@param o Object
function ObjectTranslator:SetBack(index, o) end
function ObjectTranslator:Collect() end
function ObjectTranslator:StepCollect() end
function ObjectTranslator:Dispose() end
---@param L IntPtr
---@return ObjectTranslator
function ObjectTranslator.Get(L) end

---@class LuaReflection
---@field list List<Assembly>
local LuaReflection = {}
function LuaReflection:Dispose() end
---@param L IntPtr
function LuaReflection.OpenLibs(L) end
---@param L IntPtr
---@return LuaReflection
function LuaReflection.Get(L) end

---@class LuaDelegate
---@field func LuaFunction
---@field self LuaTable
---@field method MethodInfo
local LuaDelegate = {}
function LuaDelegate:Dispose() end
---@param o Object
---@return boolean
function LuaDelegate:Equals(o) end
---@return number
function LuaDelegate:GetHashCode() end

---@class LuaObjectPool
---@field Item Object
local LuaObjectPool = {}
function LuaObjectPool:Clear() end
---@param obj Object
---@return number
function LuaObjectPool:Add(obj) end
---@param index number
---@return Object
function LuaObjectPool:TryGetValue(index) end
---@param pos number
---@return Object
function LuaObjectPool:Remove(pos) end
---@param pos number
---@return Object
function LuaObjectPool:Destroy(pos) end
---@param collectListener Action<Object,number>
function LuaObjectPool:StepCollect(collectListener) end
---@param pos number
---@param o Object
---@return Object
function LuaObjectPool:Replace(pos, o) end


---@class List<T>
---@class Dictionary<TKey,TValue>
---@class IEnumerable<T>
---@generic T : any
---@generic TKey : any
---@generic TValue : any

-- namespace
ACE = {}
LuaInterface = {}
System = {}
UnityEngine = {}
UnityEngine.Audio = {}
UnityEngine.Experimental = {}
UnityEngine.Experimental.Rendering = {}
UnityEngine.Rendering = {}
UnityEngine.SceneManagement = {}

-- class
ACE.ANode = ANode
ACE.JpsHelperManager = JpsHelperManager
LuaInterface.Debugger = Debugger
LuaInterface.InjectType = InjectType
LuaInterface.LuaBaseRef = LuaBaseRef
LuaInterface.LuaDelegate = LuaDelegate
LuaInterface.LuaFunction = LuaFunction
LuaInterface.LuaInjectionStation = LuaInjectionStation
LuaInterface.LuaObjectPool = LuaObjectPool
LuaInterface.LuaReflection = LuaReflection
LuaInterface.LuaState = LuaState
LuaInterface.LuaThread = LuaThread
LuaInterface.ObjectTranslator = ObjectTranslator
System.Array = Array
System.Delegate = Delegate
System.Enum = Enum
System.IntPtr = IntPtr
System.TypeCode = TypeCode
UnityEngine.AccelerationEvent = AccelerationEvent
UnityEngine.AnimationBlendMode = AnimationBlendMode
UnityEngine.AnimationClip = AnimationClip
UnityEngine.AnimationCurve = AnimationCurve
UnityEngine.AnimationEvent = AnimationEvent
UnityEngine.AnimationState = AnimationState
UnityEngine.Animator = Animator
UnityEngine.AnimatorClipInfo = AnimatorClipInfo
UnityEngine.AnimatorControllerParameter = AnimatorControllerParameter
UnityEngine.AnimatorControllerParameterType = AnimatorControllerParameterType
UnityEngine.AnimatorCullingMode = AnimatorCullingMode
UnityEngine.AnimatorRecorderMode = AnimatorRecorderMode
UnityEngine.AnimatorStateInfo = AnimatorStateInfo
UnityEngine.AnimatorTransitionInfo = AnimatorTransitionInfo
UnityEngine.AnimatorUpdateMode = AnimatorUpdateMode
UnityEngine.AnisotropicFiltering = AnisotropicFiltering
UnityEngine.Application = Application
UnityEngine.ApplicationInstallMode = ApplicationInstallMode
UnityEngine.ApplicationSandboxType = ApplicationSandboxType
UnityEngine.AssetBundle = AssetBundle
UnityEngine.AssetBundleCreateRequest = AssetBundleCreateRequest
UnityEngine.AssetBundleLoadResult = AssetBundleLoadResult
UnityEngine.AssetBundleRecompressOperation = AssetBundleRecompressOperation
UnityEngine.AssetBundleRequest = AssetBundleRequest
UnityEngine.AsyncOperation = AsyncOperation
UnityEngine.Audio.AudioMixer = AudioMixer
UnityEngine.Audio.AudioMixerGroup = AudioMixerGroup
UnityEngine.Audio.AudioMixerSnapshot = AudioMixerSnapshot
UnityEngine.Audio.AudioMixerUpdateMode = AudioMixerUpdateMode
UnityEngine.AudioBehaviour = AudioBehaviour
UnityEngine.AudioClip = AudioClip
UnityEngine.AudioClipLoadType = AudioClipLoadType
UnityEngine.AudioDataLoadState = AudioDataLoadState
UnityEngine.AudioRolloffMode = AudioRolloffMode
UnityEngine.AudioSource = AudioSource
UnityEngine.AudioVelocityUpdateMode = AudioVelocityUpdateMode
UnityEngine.Avatar = Avatar
UnityEngine.Behaviour = Behaviour
UnityEngine.BoneWeight = BoneWeight
UnityEngine.Bounds = Bounds
UnityEngine.BoxCollider = BoxCollider
UnityEngine.Camera = Camera
UnityEngine.Camera.GateFitMode = GateFitMode
UnityEngine.Camera.MonoOrStereoscopicEye = MonoOrStereoscopicEye
UnityEngine.CameraClearFlags = CameraClearFlags
UnityEngine.CameraType = CameraType
UnityEngine.CapsuleCollider = CapsuleCollider
UnityEngine.CharacterController = CharacterController
UnityEngine.Collider = Collider
UnityEngine.CollisionDetectionMode = CollisionDetectionMode
UnityEngine.CollisionFlags = CollisionFlags
UnityEngine.Color = Color
UnityEngine.Color32 = Color32
UnityEngine.ColorSpace = ColorSpace
UnityEngine.Compass = Compass
UnityEngine.Component = Component
UnityEngine.Coroutine = Coroutine
UnityEngine.Cubemap = Cubemap
UnityEngine.DepthTextureMode = DepthTextureMode
UnityEngine.DetailPrototype = DetailPrototype
UnityEngine.DetailRenderMode = DetailRenderMode
UnityEngine.DeviceOrientation = DeviceOrientation
UnityEngine.DurationUnit = DurationUnit
UnityEngine.Experimental.Rendering.GraphicsFormat = GraphicsFormat
UnityEngine.Experimental.Rendering.RayTracingMode = RayTracingMode
UnityEngine.FilterMode = FilterMode
UnityEngine.Flare = Flare
UnityEngine.FogMode = FogMode
UnityEngine.FrustumPlanes = FrustumPlanes
UnityEngine.FullScreenMode = FullScreenMode
UnityEngine.GameObject = GameObject
UnityEngine.Gradient = Gradient
UnityEngine.GradientAlphaKey = GradientAlphaKey
UnityEngine.GradientColorKey = GradientColorKey
UnityEngine.GradientMode = GradientMode
UnityEngine.Gyroscope = Gyroscope
UnityEngine.HideFlags = HideFlags
UnityEngine.HumanBone = HumanBone
UnityEngine.HumanDescription = HumanDescription
UnityEngine.HumanLimit = HumanLimit
UnityEngine.IMECompositionMode = IMECompositionMode
UnityEngine.Input = Input
UnityEngine.KeyCode = KeyCode
UnityEngine.Keyframe = Keyframe
UnityEngine.LayerMask = LayerMask
UnityEngine.Light = Light
UnityEngine.LightBakingOutput = LightBakingOutput
UnityEngine.LightmapBakeType = LightmapBakeType
UnityEngine.LightRenderMode = LightRenderMode
UnityEngine.LightShadowCasterMode = LightShadowCasterMode
UnityEngine.LightShadows = LightShadows
UnityEngine.LightShape = LightShape
UnityEngine.LightType = LightType
UnityEngine.LocationInfo = LocationInfo
UnityEngine.LocationService = LocationService
UnityEngine.LocationServiceStatus = LocationServiceStatus
UnityEngine.Material = Material
UnityEngine.MaterialGlobalIlluminationFlags = MaterialGlobalIlluminationFlags
UnityEngine.Matrix4x4 = Matrix4x4
UnityEngine.Mesh = Mesh
UnityEngine.MeshCollider = MeshCollider
UnityEngine.MeshColliderCookingOptions = MeshColliderCookingOptions
UnityEngine.MeshRenderer = MeshRenderer
UnityEngine.MeshTopology = MeshTopology
UnityEngine.MixedLightingMode = MixedLightingMode
UnityEngine.MonoBehaviour = MonoBehaviour
UnityEngine.Motion = Motion
UnityEngine.MotionVectorGenerationMode = MotionVectorGenerationMode
UnityEngine.NetworkReachability = NetworkReachability
UnityEngine.Object = Object
UnityEngine.ParticleSystem = ParticleSystem
UnityEngine.ParticleSystem.Burst = Burst
UnityEngine.ParticleSystem.CollisionModule = CollisionModule
UnityEngine.ParticleSystem.ColorBySpeedModule = ColorBySpeedModule
UnityEngine.ParticleSystem.ColorOverLifetimeModule = ColorOverLifetimeModule
UnityEngine.ParticleSystem.CustomDataModule = CustomDataModule
UnityEngine.ParticleSystem.EmissionModule = EmissionModule
UnityEngine.ParticleSystem.ExternalForcesModule = ExternalForcesModule
UnityEngine.ParticleSystem.ForceOverLifetimeModule = ForceOverLifetimeModule
UnityEngine.ParticleSystem.InheritVelocityModule = InheritVelocityModule
UnityEngine.ParticleSystem.LightsModule = LightsModule
UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule = LimitVelocityOverLifetimeModule
UnityEngine.ParticleSystem.MainModule = MainModule
UnityEngine.ParticleSystem.MinMaxCurve = MinMaxCurve
UnityEngine.ParticleSystem.MinMaxGradient = MinMaxGradient
UnityEngine.ParticleSystem.NoiseModule = NoiseModule
UnityEngine.ParticleSystem.PlaybackState = PlaybackState
UnityEngine.ParticleSystem.RotationBySpeedModule = RotationBySpeedModule
UnityEngine.ParticleSystem.RotationOverLifetimeModule = RotationOverLifetimeModule
UnityEngine.ParticleSystem.ShapeModule = ShapeModule
UnityEngine.ParticleSystem.SizeBySpeedModule = SizeBySpeedModule
UnityEngine.ParticleSystem.SizeOverLifetimeModule = SizeOverLifetimeModule
UnityEngine.ParticleSystem.TextureSheetAnimationModule = TextureSheetAnimationModule
UnityEngine.ParticleSystem.TrailModule = TrailModule
UnityEngine.ParticleSystem.Trails = Trails
UnityEngine.ParticleSystem.TriggerModule = TriggerModule
UnityEngine.ParticleSystem.VelocityOverLifetimeModule = VelocityOverLifetimeModule
UnityEngine.ParticleSystemAnimationMode = ParticleSystemAnimationMode
UnityEngine.ParticleSystemAnimationRowMode = ParticleSystemAnimationRowMode
UnityEngine.ParticleSystemAnimationTimeMode = ParticleSystemAnimationTimeMode
UnityEngine.ParticleSystemAnimationType = ParticleSystemAnimationType
UnityEngine.ParticleSystemCollisionMode = ParticleSystemCollisionMode
UnityEngine.ParticleSystemCollisionQuality = ParticleSystemCollisionQuality
UnityEngine.ParticleSystemCollisionType = ParticleSystemCollisionType
UnityEngine.ParticleSystemCullingMode = ParticleSystemCullingMode
UnityEngine.ParticleSystemCurveMode = ParticleSystemCurveMode
UnityEngine.ParticleSystemCustomDataMode = ParticleSystemCustomDataMode
UnityEngine.ParticleSystemEmitterVelocityMode = ParticleSystemEmitterVelocityMode
UnityEngine.ParticleSystemForceField = ParticleSystemForceField
UnityEngine.ParticleSystemForceFieldShape = ParticleSystemForceFieldShape
UnityEngine.ParticleSystemGameObjectFilter = ParticleSystemGameObjectFilter
UnityEngine.ParticleSystemGradientMode = ParticleSystemGradientMode
UnityEngine.ParticleSystemInheritVelocityMode = ParticleSystemInheritVelocityMode
UnityEngine.ParticleSystemMeshShapeType = ParticleSystemMeshShapeType
UnityEngine.ParticleSystemNoiseQuality = ParticleSystemNoiseQuality
UnityEngine.ParticleSystemOverlapAction = ParticleSystemOverlapAction
UnityEngine.ParticleSystemRingBufferMode = ParticleSystemRingBufferMode
UnityEngine.ParticleSystemScalingMode = ParticleSystemScalingMode
UnityEngine.ParticleSystemShapeMultiModeValue = ParticleSystemShapeMultiModeValue
UnityEngine.ParticleSystemShapeTextureChannel = ParticleSystemShapeTextureChannel
UnityEngine.ParticleSystemShapeType = ParticleSystemShapeType
UnityEngine.ParticleSystemSimulationSpace = ParticleSystemSimulationSpace
UnityEngine.ParticleSystemStopAction = ParticleSystemStopAction
UnityEngine.ParticleSystemTrailMode = ParticleSystemTrailMode
UnityEngine.ParticleSystemTrailTextureMode = ParticleSystemTrailTextureMode
UnityEngine.PatchExtents = PatchExtents
UnityEngine.PhysicMaterial = PhysicMaterial
UnityEngine.PhysicMaterialCombine = PhysicMaterialCombine
UnityEngine.Physics = Physics
UnityEngine.PhysicsScene = PhysicsScene
UnityEngine.Plane = Plane
UnityEngine.PlayMode = PlayMode
UnityEngine.QualitySettings = QualitySettings
UnityEngine.Quaternion = Quaternion
UnityEngine.QueueMode = QueueMode
UnityEngine.Ray = Ray
UnityEngine.RaycastHit = RaycastHit
UnityEngine.ReceiveGI = ReceiveGI
UnityEngine.Rect = Rect
UnityEngine.RenderBuffer = RenderBuffer
UnityEngine.Renderer = Renderer
UnityEngine.Rendering.AmbientMode = AmbientMode
UnityEngine.Rendering.DefaultReflectionMode = DefaultReflectionMode
UnityEngine.Rendering.IndexFormat = IndexFormat
UnityEngine.Rendering.LightProbeUsage = LightProbeUsage
UnityEngine.Rendering.LightShadowResolution = LightShadowResolution
UnityEngine.Rendering.OpaqueSortMode = OpaqueSortMode
UnityEngine.Rendering.ReflectionProbeUsage = ReflectionProbeUsage
UnityEngine.Rendering.RenderPipelineAsset = RenderPipelineAsset
UnityEngine.Rendering.ShaderPropertyFlags = ShaderPropertyFlags
UnityEngine.Rendering.ShaderPropertyType = ShaderPropertyType
UnityEngine.Rendering.ShaderTagId = ShaderTagId
UnityEngine.Rendering.ShadowCastingMode = ShadowCastingMode
UnityEngine.Rendering.SphericalHarmonicsL2 = SphericalHarmonicsL2
UnityEngine.Rendering.SubMeshDescriptor = SubMeshDescriptor
UnityEngine.Rendering.TextureDimension = TextureDimension
UnityEngine.Rendering.UVChannelFlags = UVChannelFlags
UnityEngine.Rendering.VertexAttribute = VertexAttribute
UnityEngine.Rendering.VertexAttributeDescriptor = VertexAttributeDescriptor
UnityEngine.Rendering.VertexAttributeFormat = VertexAttributeFormat
UnityEngine.RenderingPath = RenderingPath
UnityEngine.RenderSettings = RenderSettings
UnityEngine.RenderTexture = RenderTexture
UnityEngine.RenderTextureFormat = RenderTextureFormat
UnityEngine.RenderTextureMemoryless = RenderTextureMemoryless
UnityEngine.Resolution = Resolution
UnityEngine.ResourceRequest = ResourceRequest
UnityEngine.Resources = Resources
UnityEngine.Rigidbody = Rigidbody
UnityEngine.RigidbodyConstraints = RigidbodyConstraints
UnityEngine.RigidbodyInterpolation = RigidbodyInterpolation
UnityEngine.RuntimeAnimatorController = RuntimeAnimatorController
UnityEngine.RuntimePlatform = RuntimePlatform
UnityEngine.SceneManagement.Scene = Scene
UnityEngine.Screen = Screen
UnityEngine.ScreenOrientation = ScreenOrientation
UnityEngine.ScriptableObject = ScriptableObject
UnityEngine.SendMessageOptions = SendMessageOptions
UnityEngine.Shader = Shader
UnityEngine.ShadowmaskMode = ShadowmaskMode
UnityEngine.ShadowProjection = ShadowProjection
UnityEngine.ShadowQuality = ShadowQuality
UnityEngine.ShadowResolution = ShadowResolution
UnityEngine.SkeletonBone = SkeletonBone
UnityEngine.SkinnedMeshRenderer = SkinnedMeshRenderer
UnityEngine.SkinQuality = SkinQuality
UnityEngine.SkinWeights = SkinWeights
UnityEngine.SleepTimeout = SleepTimeout
UnityEngine.Space = Space
UnityEngine.SphereCollider = SphereCollider
UnityEngine.Sprite = Sprite
UnityEngine.SpriteDrawMode = SpriteDrawMode
UnityEngine.SpriteMaskInteraction = SpriteMaskInteraction
UnityEngine.SpritePackingMode = SpritePackingMode
UnityEngine.SpritePackingRotation = SpritePackingRotation
UnityEngine.SpriteRenderer = SpriteRenderer
UnityEngine.SpriteSortPoint = SpriteSortPoint
UnityEngine.SpriteTileMode = SpriteTileMode
UnityEngine.StackTraceLogType = StackTraceLogType
UnityEngine.StereoTargetEyeMask = StereoTargetEyeMask
UnityEngine.SystemLanguage = SystemLanguage
UnityEngine.Terrain = Terrain
UnityEngine.TerrainData = TerrainData
UnityEngine.TerrainLayer = TerrainLayer
UnityEngine.TerrainRenderFlags = TerrainRenderFlags
UnityEngine.Texture = Texture
UnityEngine.Texture2D = Texture2D
UnityEngine.Texture3D = Texture3D
UnityEngine.TextureFormat = TextureFormat
UnityEngine.TextureWrapMode = TextureWrapMode
UnityEngine.ThreadPriority = ThreadPriority
UnityEngine.Time = Time
UnityEngine.Touch = Touch
UnityEngine.TouchPhase = TouchPhase
UnityEngine.TouchType = TouchType
UnityEngine.TrackedReference = TrackedReference
UnityEngine.Transform = Transform
UnityEngine.TransparencySortMode = TransparencySortMode
UnityEngine.TreeInstance = TreeInstance
UnityEngine.TreePrototype = TreePrototype
UnityEngine.Vector2 = Vector2
UnityEngine.Vector3 = Vector3
UnityEngine.Vector4 = Vector4
UnityEngine.VRTextureUsage = VRTextureUsage
UnityEngine.WeightedMode = WeightedMode
UnityEngine.WrapMode = WrapMode
UnityEngine.WWW = WWW
UnityEngine.YieldInstruction = YieldInstruction

