Shader "Lucas/AllProps Challenge 02"
{
    Properties
    {
        _myTex ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        CGPROGRAM
            #pragma surface surf Lambert

            sampler2D _myTex;

            struct Input {
                float2 uv_myTex;
                float3 worldRefl;
            };

            void surf (Input IN, inout SurfaceOutput o) {
                o.Albedo.g = tex2D(_myTex, IN.uv_myTex).g;
            }
        ENDCG
    }
    FallBack "Diffuse"
}
