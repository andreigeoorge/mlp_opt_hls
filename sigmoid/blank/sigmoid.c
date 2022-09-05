#define	LAYER_SIZE	8

void d_sigmoid
(
		double layer_input[LAYER_SIZE],
		double layer_output[LAYER_SIZE],
		double layer_derivative[LAYER_SIZE]
)
{
    int i;
    for_sigmoid:for (i = 0; i < LAYER_SIZE; i++)
        layer_derivative[i] = layer_output[i+1] * (1.0 - layer_output[i+1]);
}
