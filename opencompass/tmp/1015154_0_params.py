datasets = [
    [
        dict(
            abbr='openai_humaneval',
            eval_cfg=dict(
                evaluator=dict(type='opencompass.datasets.HumanEvalEvaluator'),
                k=[
                    1,
                    10,
                    100,
                ],
                pred_postprocessor=dict(
                    type='opencompass.datasets.humaneval_postprocess_v2'),
                pred_role='BOT'),
            infer_cfg=dict(
                inferencer=dict(
                    max_out_len=512,
                    type='opencompass.openicl.icl_inferencer.GenInferencer'),
                prompt_template=dict(
                    template=dict(round=[
                        dict(
                            prompt=
                            'Complete the following python code:\n{prompt}',
                            role='HUMAN'),
                    ]),
                    type=
                    'opencompass.openicl.icl_prompt_template.PromptTemplate'),
                retriever=dict(
                    type='opencompass.openicl.icl_retriever.ZeroRetriever')),
            path='./data/humaneval/human-eval-v2-20210705.jsonl',
            reader_cfg=dict(
                input_columns=[
                    'prompt',
                ],
                output_column='task_id',
                train_split='test'),
            type='opencompass.datasets.HumanevalDataset'),
        dict(
            abbr='mbpp',
            eval_cfg=dict(
                evaluator=dict(type='opencompass.datasets.MBPPEvaluator'),
                pred_role='BOT'),
            infer_cfg=dict(
                inferencer=dict(
                    max_out_len=512,
                    type='opencompass.openicl.icl_inferencer.GenInferencer'),
                prompt_template=dict(
                    template=dict(round=[
                        dict(
                            prompt=
                            'You are an expert Python programmer, and here is your task: Write a function to find the similar elements from the given two tuple lists. Your code should pass these tests:\n\n assert similar_elements((3, 4, 5, 6),(5, 7, 4, 10)) == (4, 5)\nassert similar_elements((1, 2, 3, 4),(5, 4, 3, 7)) == (3, 4) \nassert similar_elements((11, 12, 14, 13),(17, 15, 14, 13)) == (13, 14) \n',
                            role='HUMAN'),
                        dict(
                            prompt=
                            "[BEGIN]\n 'def similar_elements(test_tup1, test_tup2):\r\n  res = tuple(set(test_tup1) & set(test_tup2))\r\n  return (res)' \n[DONE] \n\n ",
                            role='BOT'),
                        dict(
                            prompt=
                            'You are an expert Python programmer, and here is your task: Write a python function to identify non-prime numbers. Your code should pass these tests:\n\n assert is_not_prime(2) == False \nassert is_not_prime(10) == True \nassert is_not_prime(35) == True \n',
                            role='HUMAN'),
                        dict(
                            prompt=
                            "[BEGIN]\n 'import math\r\ndef is_not_prime(n):\r\n    result = False\r\n    for i in range(2,int(math.sqrt(n)) + 1):\r\n        if n % i == 0:\r\n            result = True\r\n    return result' \n[DONE] \n\n ",
                            role='BOT'),
                        dict(
                            prompt=
                            'You are an expert Python programmer, and here is your task: Write a function to find the largest integers from a given list of numbers using heap queue algorithm. Your code should pass these tests:\n\n assert heap_queue_largest( [25, 35, 22, 85, 14, 65, 75, 22, 58],3)==[85, 75, 65] \nassert heap_queue_largest( [25, 35, 22, 85, 14, 65, 75, 22, 58],2)==[85, 75] \nassert heap_queue_largest( [25, 35, 22, 85, 14, 65, 75, 22, 58],5)==[85, 75, 65, 58, 35] \n',
                            role='HUMAN'),
                        dict(
                            prompt=
                            "[BEGIN]\n 'import heapq as hq\r\ndef heap_queue_largest(nums,n):\r\n  largest_nums = hq.nlargest(n, nums)\r\n  return largest_nums' \n[DONE] \n\n ",
                            role='BOT'),
                        dict(
                            prompt=
                            'You are an expert Python programmer, and here is your task: {text} Your code should pass these tests:\n\n {test_list}  \n',
                            role='HUMAN'),
                        dict(prompt='[BEGIN]\n', role='BOT'),
                    ]),
                    type=
                    'opencompass.openicl.icl_prompt_template.PromptTemplate'),
                retriever=dict(
                    type='opencompass.openicl.icl_retriever.ZeroRetriever')),
            path='./data/mbpp/mbpp.jsonl',
            reader_cfg=dict(
                input_columns=[
                    'text',
                    'test_list',
                ],
                output_column='test_list_2'),
            type='opencompass.datasets.MBPPDataset'),
    ],
]
models = [
    dict(
        abbr='map-neo-7b_hf',
        batch_size=8,
        generation_kwargs=dict(),
        max_out_len=256,
        max_seq_len=None,
        model_kwargs=dict(),
        pad_token_id=None,
        path='/xpfs/public/models/hf_models/map-neo-7b',
        peft_kwargs=dict(),
        peft_path=None,
        run_cfg=dict(num_gpus=1),
        stop_words=[],
        tokenizer_kwargs=dict(),
        tokenizer_path=None,
        type='opencompass.models.huggingface_above_v4_33.HuggingFaceBaseModel'
    ),
]
work_dir = 'outputs/default/20240818_124903'
