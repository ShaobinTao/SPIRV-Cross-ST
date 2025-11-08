#pragma clang diagnostic ignored "-Wmissing-prototypes"
#pragma clang diagnostic ignored "-Wmissing-braces"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

template<typename T, size_t Num>
struct spvUnsafeArray
{
    T elements[Num ? Num : 1];

    thread T& operator [] (size_t pos) thread
    {
        return elements[pos];
    }
    constexpr const thread T& operator [] (size_t pos) const thread
    {
        return elements[pos];
    }

    device T& operator [] (size_t pos) device
    {
        return elements[pos];
    }
    constexpr const device T& operator [] (size_t pos) const device
    {
        return elements[pos];
    }

    constexpr const constant T& operator [] (size_t pos) const constant
    {
        return elements[pos];
    }

    threadgroup T& operator [] (size_t pos) threadgroup
    {
        return elements[pos];
    }
    constexpr const threadgroup T& operator [] (size_t pos) const threadgroup
    {
        return elements[pos];
    }
};

constant uint _40_tmp [[function_constant(0)]];
constant uint _40 = is_function_constant_defined(_40_tmp) ? _40_tmp : 1u;
constant uint _41_tmp [[function_constant(1)]];
constant uint _41 = is_function_constant_defined(_41_tmp) ? _41_tmp : 1u;
constant uint _42_tmp [[function_constant(2)]];
constant uint _42 = is_function_constant_defined(_42_tmp) ? _42_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_40, _41, _42);

struct _46
{
    uint _m0;
    uint _m1;
    uint _m2;
    uint _m3;
    uint _m4;
    uint _m5;
    uint _m6;
    uint _m7;
    uint _m8;
    uint _m9;
    uint _m10;
    uint _m11;
    uint _m12;
    uint _m13;
    uint _m14;
    uint _m15;
    uint _m16;
    uint _m17;
    uint _m18;
    uint _m19;
    uint _m20;
    uint _m21;
    uint _m22;
    uint _m23;
    uint _m24;
    uint _m25;
    uint _m26;
    uint _m27;
    uint _m28;
    uint _m29;
    uint _m30;
    uint _m31;
    uint _m32;
    uint _m33;
    uint _m34;
    uint _m35;
    uint _m36;
    uint _m37;
    uint _m38;
    uint _m39;
    uint _m40;
    uint _m41;
    uint _m42;
    uint _m43;
};

struct _47
{
    uint3 _m0;
    uint3 _m1;
    uint3 _m2;
    _46 _m3;
};

constant float4 _138 = {};
constant float2 _255 = {};
constant float _755 = {};
constant float3 _872 = {};

kernel void InterpolateFlowKernel(constant _47& _49 [[buffer(0)]], texture2d<float> _53 [[texture(0)]], texture2d<float, access::write> _56 [[texture(1)]], sampler _3 [[sampler(0)]], uint3 gl_GlobalInvocationID [[thread_position_in_grid]])
{
    threadgroup spvUnsafeArray<uint, 16> _21;
    threadgroup spvUnsafeArray<float4, 16> _26;
    threadgroup spvUnsafeArray<float4, 16> _27;
    threadgroup spvUnsafeArray<float4, 16> _28;
    threadgroup spvUnsafeArray<float4, 16> _29;
    threadgroup spvUnsafeArray<spvUnsafeArray<float, 8>, 1> _34;
    uint3 _45 = gl_WorkGroupSize;
    uint2 _87 = uint2(_49._m1.x + gl_GlobalInvocationID.x, _49._m1.y + gl_GlobalInvocationID.y);
    uint2 _90 = uint2(int2(_87) / int2(uint2(8u)));
    uint2 _92 = _87 - (_90 * uint2(8u));
    uint2 _95 = (_90 << uint2(3u)) + _92;
    uint _105 = _90.x + ((int(_92.x) < int(5u)) ? 4294967295u : 0u);
    uint _106 = _105 + 1u;
    uint _109 = _90.y + ((int(_92.y) < int(5u)) ? 4294967295u : 0u);
    uint _110 = _109 + 1u;
    float4 _134 = _53.sample(_3, float2(int2(_90)), level(0.0));
    float4 _137 = _53.sample(_3, float2(int2(uint2(_105, _109))), level(0.0));
    float4 _142 = _53.sample(_3, float2(int2(uint2(_106, _109))), level(0.0));
    float4 _145 = _53.sample(_3, float2(int2(uint2(_105, _110))), level(0.0));
    float4 _149 = _53.sample(_3, float2(int2(uint2(_106, _110))), level(0.0));
    float _151 = as_type<float>(_49._m3._m0) * 8.0;
    float _153 = _134.x;
    float _158 = as_type<float>(as_type<uint>(_137.x - _153) & 2147483647u);
    bool _159 = (isunordered(_158, _151) || _158 < _151);
    bool _173;
    if (_159)
    {
        _173 = as_type<float>(as_type<uint>(_137.y - _134.y) & 2147483647u) >= _151;
    }
    else
    {
        _173 = !_159;
    }
    bool _179;
    if (_173)
    {
        _179 = true;
    }
    else
    {
        _179 = false;
    }
    float _184 = as_type<float>(as_type<uint>(_142.x - _153) & 2147483647u);
    bool _185 = (isunordered(_184, _151) || _184 < _151);
    bool _199;
    if (_185)
    {
        _199 = as_type<float>(as_type<uint>(_142.y - _134.y) & 2147483647u) >= _151;
    }
    else
    {
        _199 = !_185;
    }
    bool _205;
    if (_199)
    {
        _205 = true;
    }
    else
    {
        _205 = _179;
    }
    float _210 = as_type<float>(as_type<uint>(_145.x - _153) & 2147483647u);
    bool _211 = (isunordered(_210, _151) || _210 < _151);
    bool _225;
    if (_211)
    {
        _225 = as_type<float>(as_type<uint>(_145.y - _134.y) & 2147483647u) >= _151;
    }
    else
    {
        _225 = !_211;
    }
    bool _231;
    if (_225)
    {
        _231 = true;
    }
    else
    {
        _231 = _205;
    }
    float _236 = as_type<float>(as_type<uint>(_149.x - _153) & 2147483647u);
    float4 _274;
    if ((isunordered(_236, _151) || _236 < _151))
    {
        float4 _271;
        if (!(_231 || (as_type<float>(as_type<uint>(_149.y - _134.y) & 2147483647u) >= _151)))
        {
            float2 _256;
            _256.x = (float(int(_95.x)) * 0.125) - (float(int(_105)) + 0.5);
            float2 _259 = fma((_142 - _137).xy, _256.xx, _137.xy);
            float2 _264;
            _264.x = (float(int(_95.y)) * 0.125) - (float(int(_109)) + 0.5);
            float2 _266 = fma(fma((_149 - _145).xy, _256.xx, _145.xy) - _259, _264.xx, _259);
            float4 _267 = float4(_266.x, _266.y, 0.0, 0.0);
            _271 = float4(_267.x, _267.y, _134.z, _134.w);
        }
        else
        {
            _271 = _134;
        }
        _274 = _271;
    }
    else
    {
        _274 = _134;
    }
    _56.write(_274, uint2(_87));
}
