/*
 * heli_q8_2_aug_private.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "heli_q8_2_aug".
 *
 * Model version              : 11.6
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Wed Sep 25 15:49:37 2024
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_heli_q8_2_aug_private_h_
#define RTW_HEADER_heli_q8_2_aug_private_h_
#include "rtwtypes.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#include "heli_q8_2_aug.h"

/* A global buffer for storing error messages (defined in quanser_common library) */
EXTERN char _rt_error_message[512];
int_T rt_WriteMat4FileHeader(FILE *fp,
  int32_T m,
  int32_T n,
  const char_T *name);
void heli_q8_2_aug_output0(void);
void heli_q8_2_aug_update0(void);
void heli_q8_2_aug_output2(void);
void heli_q8_2_aug_update2(void);      /* private model entry point functions */
extern void heli_q8_2_aug_derivatives(void);

#endif                                 /* RTW_HEADER_heli_q8_2_aug_private_h_ */
