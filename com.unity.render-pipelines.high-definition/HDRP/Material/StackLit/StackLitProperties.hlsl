// ===========================================================================
//                              WARNING:
// On PS4, texture/sampler declarations need to be outside of CBuffers
// Otherwise those parameters are not bound correctly at runtime.
// ===========================================================================
TEXTURE2D(_DistortionVectorMap);
SAMPLER(sampler_DistortionVectorMap);

TEXTURE2D(_BaseColorMap);
SAMPLER(sampler_BaseColorMap);

TEXTURE2D(_SpecularColorMap);
SAMPLER(sampler_SpecularColorMap);

TEXTURE2D(_AmbientOcclusionMap);
SAMPLER(sampler_AmbientOcclusionMap);

TEXTURE2D(_MetallicMap);
SAMPLER(sampler_MetallicMap);

TEXTURE2D(_SmoothnessAMap);
SAMPLER(sampler_SmoothnessAMap);

TEXTURE2D(_NormalMap);
SAMPLER(sampler_NormalMap);

TEXTURE2D(_BentNormalMap); // reuses the normal map sampler

TEXTURE2D(_CoatNormalMap);
SAMPLER(sampler_CoatNormalMap);

TEXTURE2D(_SmoothnessBMap);
SAMPLER(sampler_SmoothnessBMap);

TEXTURE2D(_LobeMixMap);
SAMPLER(sampler_LobeMixMap);

TEXTURE2D(_HazinessMap);
SAMPLER(sampler_HazinessMap);

TEXTURE2D(_HazeExtentMap);
SAMPLER(sampler_HazeExtentMap);

TEXTURE2D(_AnisotropyAMap);
SAMPLER(sampler_AnisotropyAMap);

TEXTURE2D(_AnisotropyBMap);
SAMPLER(sampler_AnisotropyBMap);

TEXTURE2D(_CoatSmoothnessMap);
SAMPLER(sampler_CoatSmoothnessMap);

TEXTURE2D(_IridescenceThicknessMap);
SAMPLER(sampler_IridescenceThicknessMap);

TEXTURE2D(_IridescenceMaskMap);
SAMPLER(sampler_IridescenceMaskMap);

TEXTURE2D(_SubsurfaceMaskMap);
SAMPLER(sampler_SubsurfaceMaskMap);

TEXTURE2D(_ThicknessMap);
SAMPLER(sampler_ThicknessMap);

// Details
TEXTURE2D(_DetailMaskMap);
SAMPLER(sampler_DetailMaskMap);

TEXTURE2D(_DetailSmoothnessMap);
SAMPLER(sampler_DetailSmoothnessMap);

TEXTURE2D(_DetailNormalMap);
SAMPLER(sampler_DetailNormalMap);

TEXTURE2D(_EmissiveColorMap);
SAMPLER(sampler_EmissiveColorMap);

TEXTURE2D(_SharedSamplerMap0);
SAMPLER(sampler_SharedSamplerMap0);
TEXTURE2D(_SharedSamplerMap1);
SAMPLER(sampler_SharedSamplerMap1);
TEXTURE2D(_SharedSamplerMap2);
SAMPLER(sampler_SharedSamplerMap2);
TEXTURE2D(_SharedSamplerMap3);
SAMPLER(sampler_SharedSamplerMap3);
TEXTURE2D(_SharedSamplerMap4);
SAMPLER(sampler_SharedSamplerMap4);


CBUFFER_START(UnityPerMaterial)

float4 _BaseColor;
float _BaseColorUseMap;
float4 _BaseColorMap_ST;
float4 _BaseColorMap_TexelSize;
float4 _BaseColorMap_MipInfo;
float _BaseColorMapUV;
float _BaseColorMapUVLocal;

float4 _SpecularColor;
float _SpecularColorUseMap;
float4 _SpecularColorMap_ST;
float4 _SpecularColorMap_TexelSize;
float4 _SpecularColorMap_MipInfo;
float _SpecularColorMapUV;
float _SpecularColorMapUVLocal;
float _EnergyConservingSpecularColor;

float _Metallic;
float _MetallicUseMap;
float _MetallicMapUV;
float _MetallicMapUVLocal;
float4 _MetallicMap_ST;
float4 _MetallicMap_TexelSize;
float4 _MetallicMap_MipInfo;
float4 _MetallicMapChannelMask;
float4 _MetallicMapRange;

float _DielectricIor;

float _SmoothnessA;
float _SmoothnessAUseMap;
float _SmoothnessAMapUV;
float _SmoothnessAMapUVLocal;
float4 _SmoothnessAMap_ST;
float4 _SmoothnessAMap_TexelSize;
float4 _SmoothnessAMap_MipInfo;
float4 _SmoothnessAMapChannelMask;
float4 _SmoothnessAMapRange;

float4 _DebugEnvLobeMask;
float4 _DebugLobeMask;
float4 _DebugAniso;
float4 _DebugSpecularOcclusion;

float _NormalScale;
float _NormalUseMap;
float _NormalMapUV;
float _NormalMapUVLocal;
float _NormalMapObjSpace;
float4 _NormalMap_ST;
float4 _NormalMap_TexelSize;
float4 _NormalMap_MipInfo;

float _BentNormalUseMap;

float _AmbientOcclusion;
float _AmbientOcclusionUseMap;
float _AmbientOcclusionMapUV;
float _AmbientOcclusionMapUVLocal;
float4 _AmbientOcclusionMap_ST;
float4 _AmbientOcclusionMap_TexelSize;
float4 _AmbientOcclusionMap_MipInfo;
float4 _AmbientOcclusionMapChannelMask;
float4 _AmbientOcclusionMapRange;

float _SmoothnessB;
float _SmoothnessBUseMap;
float _SmoothnessBMapUV;
float _SmoothnessBMapUVLocal;
float4 _SmoothnessBMap_ST;
float4 _SmoothnessBMap_TexelSize;
float4 _SmoothnessBMap_MipInfo;
float4 _SmoothnessBMapChannelMask;
float4 _SmoothnessBMapRange;

float _LobeMix;
float _LobeMixUseMap;
float _LobeMixMapUV;
float _LobeMixMapUVLocal;
float4 _LobeMixMap_ST;
float4 _LobeMixMap_TexelSize;
float4 _LobeMixMap_MipInfo;
float4 _LobeMixMapChannelMask;
float4 _LobeMixMapRange;

float _Haziness;
float _HazinessUseMap;
float _HazinessMapUV;
float _HazinessMapUVLocal;
float4 _HazinessMap_ST;
float4 _HazinessMap_TexelSize;
float4 _HazinessMap_MipInfo;
float4 _HazinessMapChannelMask;
float4 _HazinessMapRange;

float _HazyGlossMaxDielectricF0;

float _HazeExtent;
float _HazeExtentUseMap;
float _HazeExtentMapUV;
float _HazeExtentMapUVLocal;
float4 _HazeExtentMap_ST;
float4 _HazeExtentMap_TexelSize;
float4 _HazeExtentMap_MipInfo;
float4 _HazeExtentMapChannelMask;
float4 _HazeExtentMapRange;
float _HazeExtentMapRangeScale;

float _AnisotropyA;
float _AnisotropyAUseMap;
float _AnisotropyAMapUV;
float _AnisotropyAMapUVLocal;
float4 _AnisotropyAMap_ST;
float4 _AnisotropyAMap_TexelSize;
float4 _AnisotropyAMap_MipInfo;
float4 _AnisotropyAMapChannelMask;
float4 _AnisotropyAMapRange;

float _AnisotropyB;
float _AnisotropyBUseMap;
float _AnisotropyBMapUV;
float _AnisotropyBMapUVLocal;
float4 _AnisotropyBMap_ST;
float4 _AnisotropyBMap_TexelSize;
float4 _AnisotropyBMap_MipInfo;
float4 _AnisotropyBMapChannelMask;
float4 _AnisotropyBMapRange;

float _CoatSmoothness;
float _CoatSmoothnessUseMap;
float _CoatSmoothnessMapUV;
float _CoatSmoothnessMapUVLocal;
float4 _CoatSmoothnessMap_ST;
float4 _CoatSmoothnessMap_TexelSize;
float4 _CoatSmoothnessMap_MipInfo;
float4 _CoatSmoothnessMapChannelMask;
float4 _CoatSmoothnessMapRange;
float _CoatIor;
float _CoatThickness;
float3 _CoatExtinction;

float _CoatNormalScale;
float _CoatNormalUseMap;
float _CoatNormalMapUV;
float _CoatNormalMapUVLocal;
float _CoatNormalMapObjSpace;
float4 _CoatNormalMap_ST;
float4 _CoatNormalMap_TexelSize;
float4 _CoatNormalMap_MipInfo;

float _IridescenceThickness;
float _IridescenceThicknessUseMap;
float _IridescenceThicknessMapUV;
float _IridescenceThicknessMapUVLocal;
float4 _IridescenceThicknessMap_ST;
float4 _IridescenceThicknessMap_TexelSize;
float4 _IridescenceThicknessMap_MipInfo;
float4 _IridescenceThicknessMapChannelMask;
float4 _IridescenceThicknessMapRange;
float _IridescenceIor;

float _IridescenceMask;
float _IridescenceMaskUseMap;
float _IridescenceMaskMapUV;
float _IridescenceMaskMapUVLocal;
float4 _IridescenceMaskMap_ST;
float4 _IridescenceMaskMap_TexelSize;
float4 _IridescenceMaskMap_MipInfo;
float4 _IridescenceMaskMapChannelMask;
float4 _IridescenceMaskMapRange;

int _DiffusionProfile;
float _SubsurfaceMask;
float _SubsurfaceMaskUseMap;
float _SubsurfaceMaskMapUV;
float _SubsurfaceMaskMapUVLocal;
float4 _SubsurfaceMaskMap_ST;
float4 _SubsurfaceMaskMap_TexelSize;
float4 _SubsurfaceMaskMap_MipInfo;
float4 _SubsurfaceMaskMapChannelMask;
float4 _SubsurfaceMaskMapRange;

float _Thickness;
float _ThicknessUseMap;
float _ThicknessMapUV;
float _ThicknessMapUVLocal;
float4 _ThicknessMap_ST;
float4 _ThicknessMap_TexelSize;
float4 _ThicknessMap_MipInfo;
float4 _ThicknessMapChannelMask;
float4 _ThicknessMapRange;

// Details
float _DetailMaskUseMap;
float _DetailMaskMapUV;
float _DetailMaskMapUVLocal;
float4 _DetailMaskMap_ST;
float4 _DetailMaskMap_TexelSize;
float4 _DetailMaskMap_MipInfo;
float4 _DetailMaskMapChannelMask;

float _DetailSmoothnessUseMap;
float _DetailSmoothnessMapUV;
float _DetailSmoothnessMapUVLocal;
float4 _DetailSmoothnessMap_ST;
float4 _DetailSmoothnessMap_TexelSize;
float4 _DetailSmoothnessMap_MipInfo;
float4 _DetailSmoothnessMapChannelMask;
float4 _DetailSmoothnessMapRange;
float _DetailSmoothnessScale;

float _DetailNormalScale;
float _DetailNormalUseMap;
float _DetailNormalMapUV;
float _DetailNormalMapUVLocal;
float4 _DetailNormalMap_ST;
float4 _DetailNormalMap_TexelSize;
float4 _DetailNormalMap_MipInfo;


float3 _EmissiveColor;
float _EmissiveColorUseMap; // for sampler sharing
float4 _EmissiveColorMap_ST;
float4 _EmissiveColorMap_TexelSize;
float4 _EmissiveColorMap_MipInfo;
float _EmissiveColorMapUV;
float _EmissiveColorMapUVLocal;
float _AlbedoAffectEmissive;

float _GeometricNormalFilteringEnabled;
float _TextureNormalFilteringEnabled;
float _SpecularAntiAliasingScreenSpaceVariance;
float _SpecularAntiAliasingThreshold;

float _AlphaCutoff;
float4 _DoubleSidedConstants;

float _DistortionScale;
float _DistortionVectorScale;
float _DistortionVectorBias;
float _DistortionBlurScale;
float _DistortionBlurRemapMin;
float _DistortionBlurRemapMax;

float _EnableSamplerSharing;

// Note: TODO UV, _ST etc are dummy, just to reuse some macros to touch the texture object themselves
// so the shader will compile and make the samplers (what we really want) available.
float _SharedSamplerMap0UV;
float _SharedSamplerMap0UVLocal;
float4 _SharedSamplerMap0_ST;
float4 _SharedSamplerMap0_TexelSize;
float4 _SharedSamplerMap0_MipInfo;

float _SharedSamplerMap1UV;
float _SharedSamplerMap1UVLocal;
float4 _SharedSamplerMap1_ST;
float4 _SharedSamplerMap1_TexelSize;
float4 _SharedSamplerMap1_MipInfo;

float _SharedSamplerMap2UV;
float _SharedSamplerMap2UVLocal;
float4 _SharedSamplerMap2_ST;
float4 _SharedSamplerMap2_TexelSize;
float4 _SharedSamplerMap2_MipInfo;

float _SharedSamplerMap3UV;
float _SharedSamplerMap3UVLocal;
float4 _SharedSamplerMap3_ST;
float4 _SharedSamplerMap3_TexelSize;
float4 _SharedSamplerMap3_MipInfo;

float _SharedSamplerMap4UV;
float _SharedSamplerMap4UVLocal;
float4 _SharedSamplerMap4_ST;
float4 _SharedSamplerMap4_TexelSize;
float4 _SharedSamplerMap4_MipInfo;

// Caution: C# code in BaseLitUI.cs call LightmapEmissionFlagsProperty() which assume that there is an existing "_EmissionColor"
// value that exist to identify if the GI emission need to be enabled.
// In our case we don't use such a mechanism but need to keep the code quiet. We declare the value and always enable it.
// TODO: Fix the code in legacy unity so we can customize the behavior for GI
float3 _EmissionColor;

// Following two variables are feeded by the C++ Editor for Scene selection
int _ObjectId;
int _PassValue;

CBUFFER_END
