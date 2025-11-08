#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

struct _11
{
    uint3 _m0;
    uint3 _m1;
};

constant uint _16_tmp [[function_constant(0)]];
constant uint _16 = is_function_constant_defined(_16_tmp) ? _16_tmp : 1u;
constant uint _17_tmp [[function_constant(1)]];
constant uint _17 = is_function_constant_defined(_17_tmp) ? _17_tmp : 1u;
constant uint _18_tmp [[function_constant(2)]];
constant uint _18 = is_function_constant_defined(_18_tmp) ? _18_tmp : 1u;
constant uint3 gl_WorkGroupSize [[maybe_unused]] = uint3(_16, _17, _18);
constant float _124 = {};

kernel void DilateMask(constant _11& _13 [[buffer(0)]], texture2d<float> _26 [[texture(0)]], texture2d<float, access::write> _29 [[texture(1)]], sampler _3 [[sampler(0)]], uint3 gl_GlobalInvocationID [[thread_position_in_grid]])
{
    uint3 _21 = gl_WorkGroupSize;
    uint2 _48 = uint2(_13._m1.x + gl_GlobalInvocationID.x, _13._m1.y + gl_GlobalInvocationID.y);
    float2 _56 = float2(int2(_48 << uint2(1u))) + float2(1.5);
    float4 _126 = float4(0.0);
    _126.x = 1.0 - (((fma(_26.sample(_3, (_56 + float2(0.5, 2.0)), level(0.0)).x, 2.0, fma(_26.sample(_3, (_56 + float2(-1.5, 2.0)), level(0.0)).x, 2.0, fma(_26.sample(_3, (_56 + float2(2.0, 0.5)), level(0.0)).x, 2.0, fma(_26.sample(_3, (_56 + float2(0.5)), level(0.0)).x, 4.0, fma(_26.sample(_3, (_56 + float2(-1.5, 0.5)), level(0.0)).x, 4.0, fma(_26.sample(_3, (_56 + float2(2.0, -1.5)), level(0.0)).x, 2.0, fma(_26.sample(_3, (_56 + float2(0.5, -1.5)), level(0.0)).x, 4.0, _26.sample(_3, (_56 + float2(-1.5)), level(0.0)).x * 4.0))))))) + _26.sample(_3, (_56 + float2(2.0)), level(0.0)).x) + (-0.20000000298023223876953125)) * 0.5);
    _29.write(_126, uint2(_48));
}
