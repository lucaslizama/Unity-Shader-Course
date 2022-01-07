Shader "Lucas/AllProps Challenge 04"
{
    Properties
    {
        _myDiffuse ("Diffuse", 2D) = "white" {}
        _myEmissive ("Emissive", 2D) = "black" {}
    }
    SubShader
    {
        CGPROGRAM
            #pragma surface surf Lambert

            sampler2D _myDiffuse;
            sampler2D _myEmissive;

            struct Input {
                float2 uv_myDiffuse;
                float2 uv_myEmissive;
                float3 worldRefl;
            };

            void surf (Input IN, inout SurfaceOutput o) {
                float3 diffuse = tex2D(_myDiffuse, IN.uv_myDiffuse).rgb;
                float3 emissive = tex2D(_myEmissive, IN.uv_myEmissive);

                o.Albedo = diffuse;
                o.Emission = emissive;
            }
        ENDCG
    }
    FallBack "Diffuse"
}
