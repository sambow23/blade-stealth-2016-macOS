/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5-SaSsdt.aml, Fri Jul 10 10:13:45 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00005981 (22913)
 *     Revision         0x02
 *     Checksum         0x3A
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "SaSsdt", "SaSsdt ", 0x00003000)
{
    /*
     * iASL Warning: There were 20 external control methods found during
     * disassembly, but only 18 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (CPSC, FieldUnitObj)
    External (DSEN, FieldUnitObj)
    External (ECR1, FieldUnitObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (GUAM, MethodObj)    // 1 Arguments
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (OSYS, FieldUnitObj)
    External (PCRA, MethodObj)    // 3 Arguments
    External (PCRO, MethodObj)    // 3 Arguments
    External (S0ID, FieldUnitObj)

    OperationRegion (SANV, SystemMemory, 0x87B67D98, 0x013F)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        PAVP,   8, 
        CADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        DIDX,   32, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        NXDX,   32, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        IMTP,   8, 
        EDPV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        SGGP,   8, 
        HRE0,   8, 
        HRG0,   32, 
        HRA0,   8, 
        PWE0,   8, 
        PWG0,   32, 
        PWA0,   8, 
        P1GP,   8, 
        HRE1,   8, 
        HRG1,   32, 
        HRA1,   8, 
        PWE1,   8, 
        PWG1,   32, 
        PWA1,   8, 
        P2GP,   8, 
        HRE2,   8, 
        HRG2,   32, 
        HRA2,   8, 
        PWE2,   8, 
        PWG2,   32, 
        PWA2,   8, 
        DLPW,   16, 
        DLHR,   16, 
        EECP,   8, 
        XBAS,   32, 
        GBAS,   16, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        LTRX,   8, 
        OBFX,   8, 
        LTRY,   8, 
        OBFY,   8, 
        LTRZ,   8, 
        OBFZ,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        PCSL,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        CPEX,   32, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8, 
        M32B,   32, 
        M32L,   32, 
        P0WK,   32, 
        P1WK,   32, 
        P2WK,   32, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        PXFD,   8, 
        EBAS,   32, 
        DGVS,   32, 
        DGVB,   32, 
        HYSS,   32, 
        TDGS,   8, 
        EGPV,   8, 
        EGPC,   32, 
        TBDT,   32
    }

    Scope (\_SB.PCI0)
    {
        Name (LTRS, Zero)
        Name (OBFS, Zero)
    }

    Scope (\_GPE)
    {
        Method (P0L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P0WK))
            {
                \_SB.SHPO (P0WK, One)
                Notify (\_SB.PCI0.PEG0, 0x02)
            }
        }

        Method (P1L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P1WK))
            {
                \_SB.SHPO (P1WK, One)
                Notify (\_SB.PCI0.PEG1, 0x02)
            }
        }

        Method (P2L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P2WK))
            {
                \_SB.SHPO (P2WK, One)
                Notify (\_SB.PCI0.PEG2, 0x02)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        OperationRegion (MSID, SystemMemory, EBAS, 0x50)
        Field (MSID, DWordAcc, Lock, Preserve)
        {
            VEID,   16, 
            Offset (0x40), 
            NVID,   32, 
            Offset (0x4C), 
            ATID,   32
        }

        OperationRegion (RPCX, SystemMemory, Add (\XBAS, 0x8000), 0x0100)
        Field (RPCX, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x84), 
            D0ST,   2
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRX, LTRS)
            Store (OBFX, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        PowerResource (PG00, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGON (Zero)
                    Or (CMDR, 0x07, CMDR)
                    Store (Zero, D0ST)
                    If (LEqual (VEID, 0x10DE))
                    {
                        Store (HYSS, NVID)
                    }

                    If (LEqual (VEID, 0x1002))
                    {
                        Store (HYSS, ATID)
                    }

                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGOF (Zero)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG00
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG00
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG00
        })
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN)
            }
            Else
            {
                Store (Zero, WKEN)
            }
        }

        Method (P0EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (SGGP, Zero))
                {
                    If (LEqual (SGGP, One))
                    {
                        \_SB.SGOV (P0WK, One)
                        \_SB.SHPO (P0WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    If (CondRefOf (\_SB.PCI0.PEG0.PEGP))
    {
        Scope (\_SB.PCI0.PEG0.PEGP)
        {
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.PEG1)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRY, LTRS)
            Store (OBFY, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        PowerResource (PG01, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGON (One)
                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGOF (One)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG01
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG01
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG01
        })
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN)
            }
            Else
            {
                Store (Zero, WKEN)
            }
        }

        Method (P1EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (P1GP, Zero))
                {
                    If (LEqual (P1GP, One))
                    {
                        \_SB.SGOV (P1WK, One)
                        \_SB.SHPO (P1WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    If (CondRefOf (\_SB.PCI0.PEG1.PEGP))
    {
        Scope (\_SB.PCI0.PEG1.PEGP)
        {
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.PEG2)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRZ, LTRS)
            Store (OBFZ, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    Case (0x04)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        PowerResource (PG02, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGON (0x02)
                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LAnd (LGreater (OSYS, 0x07D9), PEGS ()))
                {
                    PGOF (0x02)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG02
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG02
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG02
        })
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN)
            }
            Else
            {
                Store (Zero, WKEN)
            }
        }

        Method (P2EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (P2GP, Zero))
                {
                    If (LEqual (P2GP, One))
                    {
                        \_SB.SGOV (P2WK, One)
                        \_SB.SHPO (P2WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    If (CondRefOf (\_SB.PCI0.PEG2.PEGP))
    {
        Scope (\_SB.PCI0.PEG2.PEGP)
        {
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            Store (And (Arg0, 0x07), DSEN)
            If (LEqual (And (Arg0, 0x03), Zero))
            {
                If (CondRefOf (HDOS))
                {
                    HDOS ()
                }
            }
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            If (LEqual (IMTP, One))
            {
                Store (One, NDID)
            }
            Else
            {
                Store (Zero, NDID)
            }

            If (LNotEqual (DIDL, Zero))
            {
                Store (SDDL (DIDL), DID1)
            }

            If (LNotEqual (DDL2, Zero))
            {
                Store (SDDL (DDL2), DID2)
            }

            If (LNotEqual (DDL3, Zero))
            {
                Store (SDDL (DDL3), DID3)
            }

            If (LNotEqual (DDL4, Zero))
            {
                Store (SDDL (DDL4), DID4)
            }

            If (LNotEqual (DDL5, Zero))
            {
                Store (SDDL (DDL5), DID5)
            }

            If (LNotEqual (DDL6, Zero))
            {
                Store (SDDL (DDL6), DID6)
            }

            If (LNotEqual (DDL7, Zero))
            {
                Store (SDDL (DDL7), DID7)
            }

            If (LNotEqual (DDL8, Zero))
            {
                Store (SDDL (DDL8), DID8)
            }

            If (LNotEqual (DDL9, Zero))
            {
                Store (SDDL (DDL9), DID9)
            }

            If (LNotEqual (DD10, Zero))
            {
                Store (SDDL (DD10), DIDA)
            }

            If (LNotEqual (DD11, Zero))
            {
                Store (SDDL (DD11), DIDB)
            }

            If (LNotEqual (DD12, Zero))
            {
                Store (SDDL (DD12), DIDC)
            }

            If (LNotEqual (DD13, Zero))
            {
                Store (SDDL (DD13), DIDD)
            }

            If (LNotEqual (DD14, Zero))
            {
                Store (SDDL (DD14), DIDE)
            }

            If (LNotEqual (DD15, Zero))
            {
                Store (SDDL (DD15), DIDF)
            }

            If (LEqual (NDID, One))
            {
                Name (TMP1, Package (0x01)
                {
                    0xFFFFFFFF
                })
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP1, Zero))
                }
                Else
                {
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                }

                Return (TMP1)
            }

            If (LEqual (NDID, 0x02))
            {
                Name (TMP2, Package (0x02)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP2, One))
                }
                Else
                {
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                }

                Return (TMP2)
            }

            If (LEqual (NDID, 0x03))
            {
                Name (TMP3, Package (0x03)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                Store (Or (0x00010000, DID2), Index (TMP3, One))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP3, 0x02))
                }
                Else
                {
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                }

                Return (TMP3)
            }

            If (LEqual (NDID, 0x04))
            {
                Name (TMP4, Package (0x04)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                Store (Or (0x00010000, DID2), Index (TMP4, One))
                Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP4, 0x03))
                }
                Else
                {
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                }

                Return (TMP4)
            }

            If (LEqual (NDID, 0x05))
            {
                Name (TMP5, Package (0x05)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                Store (Or (0x00010000, DID2), Index (TMP5, One))
                Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP5, 0x04))
                }
                Else
                {
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                }

                Return (TMP5)
            }

            If (LEqual (NDID, 0x06))
            {
                Name (TMP6, Package (0x06)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                Store (Or (0x00010000, DID2), Index (TMP6, One))
                Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP6, 0x05))
                }
                Else
                {
                    Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                }

                Return (TMP6)
            }

            If (LEqual (NDID, 0x07))
            {
                Name (TMP7, Package (0x07)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                Store (Or (0x00010000, DID2), Index (TMP7, One))
                Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP7, 0x06))
                }
                Else
                {
                    Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                }

                Return (TMP7)
            }

            If (LEqual (NDID, 0x08))
            {
                Name (TMP8, Package (0x08)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                Store (Or (0x00010000, DID2), Index (TMP8, One))
                Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP8, 0x07))
                }
                Else
                {
                    Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                }

                Return (TMP8)
            }

            If (LEqual (NDID, 0x09))
            {
                Name (TMP9, Package (0x09)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP9, Zero))
                Store (Or (0x00010000, DID2), Index (TMP9, One))
                Store (Or (0x00010000, DID3), Index (TMP9, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP9, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP9, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP9, 0x05))
                Store (Or (0x00010000, DID7), Index (TMP9, 0x06))
                Store (Or (0x00010000, DID8), Index (TMP9, 0x07))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMP9, 0x08))
                }
                Else
                {
                    Store (Or (0x00010000, DID9), Index (TMP9, 0x08))
                }

                Return (TMP9)
            }

            If (LEqual (NDID, 0x0A))
            {
                Name (TMPA, Package (0x0A)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPA, Zero))
                Store (Or (0x00010000, DID2), Index (TMPA, One))
                Store (Or (0x00010000, DID3), Index (TMPA, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPA, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPA, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPA, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPA, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPA, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPA, 0x08))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPA, 0x09))
                }
                Else
                {
                    Store (Or (0x00010000, DIDA), Index (TMPA, 0x09))
                }

                Return (TMPA)
            }

            If (LEqual (NDID, 0x0B))
            {
                Name (TMPB, Package (0x0B)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPB, Zero))
                Store (Or (0x00010000, DID2), Index (TMPB, One))
                Store (Or (0x00010000, DID3), Index (TMPB, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPB, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPB, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPB, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPB, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPB, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPB, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPB, 0x09))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPB, 0x0A))
                }
                Else
                {
                    Store (Or (0x00010000, DIDB), Index (TMPB, 0x0A))
                }

                Return (TMPB)
            }

            If (LEqual (NDID, 0x0C))
            {
                Name (TMPC, Package (0x0C)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPC, Zero))
                Store (Or (0x00010000, DID2), Index (TMPC, One))
                Store (Or (0x00010000, DID3), Index (TMPC, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPC, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPC, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPC, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPC, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPC, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPC, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPC, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPC, 0x0A))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPC, 0x0B))
                }
                Else
                {
                    Store (Or (0x00010000, DIDC), Index (TMPC, 0x0B))
                }

                Return (TMPC)
            }

            If (LEqual (NDID, 0x0D))
            {
                Name (TMPD, Package (0x0D)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPD, Zero))
                Store (Or (0x00010000, DID2), Index (TMPD, One))
                Store (Or (0x00010000, DID3), Index (TMPD, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPD, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPD, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPD, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPD, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPD, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPD, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPD, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPD, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPD, 0x0B))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPD, 0x0C))
                }
                Else
                {
                    Store (Or (0x00010000, DIDD), Index (TMPD, 0x0C))
                }

                Return (TMPD)
            }

            If (LEqual (NDID, 0x0E))
            {
                Name (TMPE, Package (0x0E)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPE, Zero))
                Store (Or (0x00010000, DID2), Index (TMPE, One))
                Store (Or (0x00010000, DID3), Index (TMPE, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPE, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPE, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPE, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPE, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPE, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPE, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPE, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPE, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPE, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPE, 0x0C))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPE, 0x0D))
                }
                Else
                {
                    Store (Or (0x00010000, DIDE), Index (TMPE, 0x0D))
                }

                Return (TMPE)
            }

            If (LEqual (NDID, 0x0F))
            {
                Name (TMPF, Package (0x0F)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPF, Zero))
                Store (Or (0x00010000, DID2), Index (TMPF, One))
                Store (Or (0x00010000, DID3), Index (TMPF, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPF, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPF, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPF, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPF, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPF, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPF, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPF, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPF, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPF, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPF, 0x0C))
                Store (Or (0x00010000, DIDE), Index (TMPF, 0x0D))
                If (LEqual (IMTP, One))
                {
                    Store (0x0002CA00, Index (TMPF, 0x0E))
                }
                Else
                {
                    Store (Or (0x00010000, DIDF), Index (TMPF, 0x0E))
                }

                Return (TMPF)
            }

            If (LEqual (NDID, 0x10))
            {
                Name (TMPG, Package (0x10)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPG, Zero))
                Store (Or (0x00010000, DID2), Index (TMPG, One))
                Store (Or (0x00010000, DID3), Index (TMPG, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPG, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPG, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPG, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPG, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPG, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPG, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPG, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPG, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPG, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPG, 0x0C))
                Store (Or (0x00010000, DIDE), Index (TMPG, 0x0D))
                Store (Or (0x00010000, DIDF), Index (TMPG, 0x0E))
                Store (0x0002CA00, Index (TMPG, 0x0F))
                Return (TMPG)
            }

            Return (Package (0x01)
            {
                0x0400
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID1), 0x0400))
                {
                    Store (One, EDPV)
                    Store (NXD1, NXDX)
                    Store (DID1, DIDX)
                    Return (One)
                }

                If (LEqual (DID1, Zero))
                {
                    Return (One)
                }
                Else
                {
                    Return (And (0xFFFF, DID1))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (CDDS (DID1))
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD1)
                }

                Return (NDDS (DID1))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID2), 0x0400))
                {
                    Store (0x02, EDPV)
                    Store (NXD2, NXDX)
                    Store (DID2, DIDX)
                    Return (0x02)
                }

                If (LEqual (DID2, Zero))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (And (0xFFFF, DID2))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (LIDS, Zero))
                {
                    Return (Zero)
                }

                Return (CDDS (DID2))
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD2)
                }

                Return (NDDS (DID2))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID3), 0x0400))
                {
                    Store (0x03, EDPV)
                    Store (NXD3, NXDX)
                    Store (DID3, DIDX)
                    Return (0x03)
                }

                If (LEqual (DID3, Zero))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (And (0xFFFF, DID3))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID3, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID3))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD3)
                }

                Return (NDDS (DID3))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID4), 0x0400))
                {
                    Store (0x04, EDPV)
                    Store (NXD4, NXDX)
                    Store (DID4, DIDX)
                    Return (0x04)
                }

                If (LEqual (DID4, Zero))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (And (0xFFFF, DID4))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID4, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID4))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD4)
                }

                Return (NDDS (DID4))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID5), 0x0400))
                {
                    Store (0x05, EDPV)
                    Store (NXD5, NXDX)
                    Store (DID5, DIDX)
                    Return (0x05)
                }

                If (LEqual (DID5, Zero))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (And (0xFFFF, DID5))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID5, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID5))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD5)
                }

                Return (NDDS (DID5))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID6), 0x0400))
                {
                    Store (0x06, EDPV)
                    Store (NXD6, NXDX)
                    Store (DID6, DIDX)
                    Return (0x06)
                }

                If (LEqual (DID6, Zero))
                {
                    Return (0x06)
                }
                Else
                {
                    Return (And (0xFFFF, DID6))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID6, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID6))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD6)
                }

                Return (NDDS (DID6))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID7), 0x0400))
                {
                    Store (0x07, EDPV)
                    Store (NXD7, NXDX)
                    Store (DID7, DIDX)
                    Return (0x07)
                }

                If (LEqual (DID7, Zero))
                {
                    Return (0x07)
                }
                Else
                {
                    Return (And (0xFFFF, DID7))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID7, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID7))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD7)
                }

                Return (NDDS (DID7))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID8), 0x0400))
                {
                    Store (0x08, EDPV)
                    Store (NXD8, NXDX)
                    Store (DID8, DIDX)
                    Return (0x08)
                }

                If (LEqual (DID8, Zero))
                {
                    Return (0x08)
                }
                Else
                {
                    Return (And (0xFFFF, DID8))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID8, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID8))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DID8))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD09)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID9), 0x0400))
                {
                    Store (0x09, EDPV)
                    Store (NXD8, NXDX)
                    Store (DID9, DIDX)
                    Return (0x09)
                }

                If (LEqual (DID9, Zero))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (And (0xFFFF, DID9))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID9, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID9))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DID9))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0A)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDA), 0x0400))
                {
                    Store (0x0A, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDA, DIDX)
                    Return (0x0A)
                }

                If (LEqual (DIDA, Zero))
                {
                    Return (0x0A)
                }
                Else
                {
                    Return (And (0xFFFF, DIDA))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDA, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DIDA))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDA))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0B)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDB), 0x0400))
                {
                    Store (0x0B, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDB, DIDX)
                    Return (0x0B)
                }

                If (LEqual (DIDB, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (And (0xFFFF, DIDB))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDB, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DIDB))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDB))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0C)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDC), 0x0400))
                {
                    Store (0x0C, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDC, DIDX)
                    Return (0x0C)
                }

                If (LEqual (DIDC, Zero))
                {
                    Return (0x0C)
                }
                Else
                {
                    Return (And (0xFFFF, DIDC))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDC, Zero))
                {
                    Return (0x0C)
                }
                Else
                {
                    Return (CDDS (DIDC))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDC))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0D)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDD), 0x0400))
                {
                    Store (0x0D, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDD, DIDX)
                    Return (0x0D)
                }

                If (LEqual (DIDD, Zero))
                {
                    Return (0x0D)
                }
                Else
                {
                    Return (And (0xFFFF, DIDD))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDD, Zero))
                {
                    Return (0x0D)
                }
                Else
                {
                    Return (CDDS (DIDD))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDD))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0E)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDE), 0x0400))
                {
                    Store (0x0E, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDE, DIDX)
                    Return (0x0E)
                }

                If (LEqual (DIDE, Zero))
                {
                    Return (0x0E)
                }
                Else
                {
                    Return (And (0xFFFF, DIDE))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDE, Zero))
                {
                    Return (0x0E)
                }
                Else
                {
                    Return (CDDS (DIDE))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDE))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDF), 0x0400))
                {
                    Store (0x0F, EDPV)
                    Store (NXD8, NXDX)
                    Store (DIDF, DIDX)
                    Return (0x0F)
                }

                If (LEqual (DIDF, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (And (0xFFFF, DIDF))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDC, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (CDDS (DIDF))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8)
                }

                Return (NDDS (DIDF))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD1F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (EDPV, Zero))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (And (0xFFFF, DIDX))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (EDPV, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (CDDS (DIDX))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXDX)
                }

                Return (NDDS (DIDX))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (Package (0x67)
                {
                    0x50, 
                    0x32, 
                    Zero, 
                    One, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                {
                    \_SB.PCI0.GFX0.AINT (One, Arg0)
                    Store (Arg0, BRTL)
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (BRTL)
            }
        }

        Method (SDDL, 1, NotSerialized)
        {
            Increment (NDID)
            Store (And (Arg0, 0x0F0F), Local0)
            Or (0x80000000, Local0, Local1)
            If (LEqual (DIDL, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL2, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL3, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL4, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL5, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL6, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL7, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL8, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL9, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD10, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD11, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD12, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD13, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD14, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD15, Local0))
            {
                Return (Local1)
            }

            Return (Zero)
        }

        Method (CDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)
            If (LEqual (Zero, Local0))
            {
                Return (0x1D)
            }

            If (LEqual (CADL, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL2, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL3, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL4, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL5, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL6, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL7, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL8, Local0))
            {
                Return (0x1F)
            }

            Return (0x1D)
        }

        Method (NDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)
            If (LEqual (Zero, Local0))
            {
                Return (Zero)
            }

            If (LEqual (NADL, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL2, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL3, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL4, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL5, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL6, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL7, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL8, Local0))
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (DSST, 1, NotSerialized)
        {
            If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
            {
                Store (NSTE, CSTE)
            }
        }

        Scope (\_SB.PCI0)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            Method (GBDA, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (0x0659, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (0x00300482, PARM)
                    If (LEqual (S0ID, One))
                    {
                        Or (PARM, 0x0100, PARM)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    And (PARM, 0xEFFF0000, PARM)
                    And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                    Or (IBTT, PARM, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (IPSC, PARM)
                    Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                    Add (PARM, 0x00010000, PARM)
                    Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    Store (GIVD, PARM)
                    XOr (PARM, One, PARM)
                    Or (PARM, ShiftLeft (GMFN, One), PARM)
                    Or (PARM, 0x1800, PARM)
                    Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                    Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                    Store (One, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    Store (Zero, PARM)
                    If (ISSC)
                    {
                        Or (PARM, 0x03, PARM)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    Store (KSV0, PARM)
                    Store (KSV1, GESF)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (CRIT)
            }

            Method (SBCB, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (Zero, PARM)
                    Store (0x000F87DD, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, One))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x03))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x04))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x07))
                {
                    If (LAnd (LEqual (S0ID, One), LLess (OSYS, 0x07DF)))
                    {
                        If (LEqual (And (PARM, 0xFF), One))
                        {
                            \GUAM (One)
                        }

                        If (LEqual (And (PARM, 0xFF), Zero))
                        {
                            \GUAM (0x02)
                        }
                    }

                    If (LEqual (PARM, Zero))
                    {
                        Store (CLID, Local0)
                        If (And (0x80000000, Local0))
                        {
                            And (CLID, 0x0F, CLID)
                            GLID (CLID)
                        }
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x08))
                {
                    If (LAnd (LEqual (S0ID, One), LLess (OSYS, 0x07DF)))
                    {
                        Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            \GUAM (Zero)
                        }
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x09))
                {
                    And (PARM, 0xFF, IBTT)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0A))
                {
                    And (PARM, 0xFF, IPSC)
                    If (And (ShiftRight (PARM, 0x08), 0xFF))
                    {
                        And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                        Decrement (IPAT)
                    }

                    And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x0B))
                {
                    And (ShiftRight (PARM, One), One, IF1E)
                    If (And (PARM, 0x0001E000))
                    {
                        And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                    }
                    Else
                    {
                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x10))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x11))
                {
                    Store (ShiftLeft (LIDS, 0x08), PARM)
                    Add (PARM, 0x0100, PARM)
                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x12))
                {
                    If (And (PARM, One))
                    {
                        If (LEqual (ShiftRight (PARM, One), One))
                        {
                            Store (One, ISSC)
                        }
                        Else
                        {
                            Store (Zero, GESF)
                            Return (CRIT)
                        }
                    }
                    Else
                    {
                        Store (Zero, ISSC)
                    }

                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x13))
                {
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                If (LEqual (GESF, 0x14))
                {
                    And (PARM, 0x0F, PAVP)
                    Store (Zero, GESF)
                    Store (Zero, PARM)
                    Return (SUCC)
                }

                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GEFC, 0x04))
            {
                Store (GBDA (), GXFC)
            }

            If (LEqual (GEFC, 0x06))
            {
                Store (SBCB (), GXFC)
            }

            Store (Zero, GEFC)
            Store (One, CPSC)
            Store (Zero, GSSE)
            Store (Zero, SCIE)
            Return (Zero)
        }

        Method (PDRD, 0, NotSerialized)
        {
            Return (LNot (DRDY))
        }

        Method (PSTS, 0, NotSerialized)
        {
            If (LGreater (CSTS, 0x02))
            {
                Sleep (ASLP)
            }

            Return (LEqual (CSTS, 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            Store (Arg0, CEVT)
            Store (0x03, CSTS)
            If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
            {
                Notify (\_SB.PCI0.GFX0, Arg1)
            }

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }
            Else
            {
                Notify (\_SB.PCI0.GFX0, 0x80)
            }

            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            Store (Arg0, TIDX)
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                Store (0x03, CLID)
            }
            Else
            {
                Store (Arg0, CLID)
            }

            If (GNOT (0x02, Zero))
            {
                Or (CLID, 0x80000000, CLID)
                Return (One)
            }

            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            Store (Arg0, CDCK)
            Return (GNOT (0x04, Zero))
        }

        Method (PARD, 0, NotSerialized)
        {
            If (LNot (ARDY))
            {
                Sleep (ASLP)
            }

            Return (LNot (ARDY))
        }

        Method (IUEH, 1, Serialized)
        {
            And (IUER, 0xC0, IUER)
            XOr (IUER, ShiftLeft (One, Arg0), IUER)
            If (LLessEqual (Arg0, 0x04))
            {
                Return (AINT (0x05, Zero))
            }
            Else
            {
                Return (AINT (Arg0, Zero))
            }
        }

        Method (AINT, 2, NotSerialized)
        {
            If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If (LAnd (LGreaterEqual (Arg0, 0x05), LLessEqual (Arg0, 0x07)))
            {
                Store (ShiftLeft (One, Arg0), ASLC)
                Store (One, ASLE)
                Store (Zero, Local2)
                While (LAnd (LLess (Local2, 0xFA), LNotEqual (ASLC, Zero)))
                {
                    Sleep (0x04)
                    Increment (Local2)
                }

                Return (Zero)
            }

            If (LEqual (Arg0, 0x02))
            {
                If (CPFM)
                {
                    And (CPFM, 0x0F, Local0)
                    And (EPFM, 0x0F, Local1)
                    If (LEqual (Local0, One))
                    {
                        If (And (Local1, 0x06))
                        {
                            Store (0x06, PFIT)
                        }
                        ElseIf (And (Local1, 0x08))
                        {
                            Store (0x08, PFIT)
                        }
                        Else
                        {
                            Store (One, PFIT)
                        }
                    }

                    If (LEqual (Local0, 0x06))
                    {
                        If (And (Local1, 0x08))
                        {
                            Store (0x08, PFIT)
                        }
                        ElseIf (And (Local1, One))
                        {
                            Store (One, PFIT)
                        }
                        Else
                        {
                            Store (0x06, PFIT)
                        }
                    }

                    If (LEqual (Local0, 0x08))
                    {
                        If (And (Local1, One))
                        {
                            Store (One, PFIT)
                        }
                        ElseIf (And (Local1, 0x06))
                        {
                            Store (0x06, PFIT)
                        }
                        Else
                        {
                            Store (0x08, PFIT)
                        }
                    }
                }
                Else
                {
                    XOr (PFIT, 0x07, PFIT)
                }

                Or (PFIT, 0x80000000, PFIT)
                Store (0x04, ASLC)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                Or (BCLP, 0x80000000, BCLP)
                Store (0x02, ASLC)
            }
            ElseIf (LEqual (Arg0, Zero))
            {
                Store (Arg1, ALSI)
                Store (One, ASLC)
            }
            Else
            {
                Return (One)
            }

            Store (One, ASLE)
            Return (Zero)
        }

        Method (ATPX, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP1, Zero, F0SS)
                CreateWordField (TMP1, 0x02, F0IV)
                CreateDWordField (TMP1, 0x04, F0SF)
                Store (0x08, F0SS)
                Store (One, F0IV)
                Store (0x03, F0SF)
                Return (TMP1)
            }

            If (LEqual (Arg0, One))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP2, Zero, F1SS)
                CreateDWordField (TMP2, 0x02, F1VM)
                CreateDWordField (TMP2, 0x06, F1FG)
                Store (0x0A, F1SS)
                Store (0x00037680, F1VM)
                Store (0x00037680, F1FG)
                Return (TMP2)
            }
        }

        Method (ATIF, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Name (TMP0, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP0, Zero, F0SS)
                CreateWordField (TMP0, 0x02, F0IV)
                CreateDWordField (TMP0, 0x04, F0SN)
                CreateDWordField (TMP0, 0x08, F0SF)
                Store (0x0C, F0SS)
                Store (One, F0IV)
                Store (0x0A00, F0SN)
                Store (0x000C0003, F0SF)
                Return (TMP0)
            }

            If (LEqual (Arg0, One))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP1, Zero, F1SS)
                CreateDWordField (TMP1, 0x02, F1VF)
                CreateDWordField (TMP1, 0x06, F1FG)
                Store (0x0A, F1SS)
                Store (0x03, F1VF)
                Store (One, F1FG)
                Return (TMP1)
            }

            If (LEqual (Arg0, 0x02))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP2, Zero, F2SS)
                CreateDWordField (TMP2, 0x02, F2PR)
                CreateByteField (TMP2, 0x06, F2EM)
                CreateByteField (TMP2, 0x07, F2TG)
                CreateByteField (TMP2, 0x08, F2SI)
                CreateByteField (TMP2, 0x09, F2FG)
                CreateByteField (TMP2, 0x0A, F2FI)
                CreateByteField (TMP2, 0x0B, F2SP)
                Store (0x0B, F2SS)
                Return (TMP2)
            }

            If (LEqual (Arg0, 0x13))
            {
                Name (TM19, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TM19, Zero, T19S)
                CreateWordField (TM19, 0x02, T19R)
                Store (0x0100, T19S)
                Store (One, T19R)
                Store (EGPC, Local7)
                Store (0x04, Local6)
                While (One)
                {
                    OperationRegion (DGPU, SystemMemory, Local7, One)
                    Field (DGPU, ByteAcc, NoLock, Preserve)
                    {
                        TEMP,   8
                    }

                    Store (TEMP, Index (TM19, Local6))
                    Increment (Local6)
                    Increment (Local7)
                    If (LEqual (Local6, 0x0100))
                    {
                        Break
                    }
                }

                Return (TM19)
            }

            If (LEqual (Arg0, 0x14))
            {
                Name (TM20, Buffer (0x0100)
                {
                     0x00                                           
                })
                OperationRegion (DGFX, SystemMemory, TBDT, 0x3E)
                Field (DGFX, ByteAcc, NoLock, Preserve)
                {
                    TBDS,   16, 
                    RPBN,   16, 
                    RPDN,   16, 
                    RPFN,   16, 
                    RPVI,   16, 
                    RPDI,   16, 
                    HUBN,   16, 
                    HUDN,   16, 
                    HUFN,   16, 
                    HUVI,   16, 
                    HUDI,   16, 
                    HDBN,   16, 
                    HDDN,   16, 
                    HDFN,   16, 
                    HDVI,   16, 
                    HDDI,   16, 
                    EUBN,   16, 
                    EUDN,   16, 
                    EUFN,   16, 
                    EUVI,   16, 
                    EUDI,   16, 
                    EDBN,   16, 
                    EDDN,   16, 
                    EDFN,   16, 
                    EDVI,   16, 
                    EDDI,   16, 
                    EPBN,   16, 
                    EPDN,   16, 
                    EPFN,   16, 
                    EPVI,   16, 
                    EPDI,   16
                }

                CreateWordField (TM20, Zero, F20S)
                CreateWordField (TM20, 0x02, P0BN)
                CreateWordField (TM20, 0x04, P0DN)
                CreateWordField (TM20, 0x06, P0FN)
                CreateWordField (TM20, 0x08, P0VI)
                CreateWordField (TM20, 0x0A, P0DI)
                CreateWordField (TM20, 0x0C, P1BN)
                CreateWordField (TM20, 0x0E, P1DN)
                CreateWordField (TM20, 0x10, P1FN)
                CreateWordField (TM20, 0x12, P1VI)
                CreateWordField (TM20, 0x14, P1DI)
                CreateWordField (TM20, 0x16, P2BN)
                CreateWordField (TM20, 0x18, P2DN)
                CreateWordField (TM20, 0x1A, P2FN)
                CreateWordField (TM20, 0x1C, P2VI)
                CreateWordField (TM20, 0x1E, P2DI)
                CreateWordField (TM20, 0x20, P3BN)
                CreateWordField (TM20, 0x22, P3DN)
                CreateWordField (TM20, 0x24, P3FN)
                CreateWordField (TM20, 0x26, P3VI)
                CreateWordField (TM20, 0x28, P3DI)
                CreateWordField (TM20, 0x2A, P4BN)
                CreateWordField (TM20, 0x2C, P4DN)
                CreateWordField (TM20, 0x2E, P4FN)
                CreateWordField (TM20, 0x30, P4VI)
                CreateWordField (TM20, 0x32, P4DI)
                CreateWordField (TM20, 0x34, P5BN)
                CreateWordField (TM20, 0x36, P5DN)
                CreateWordField (TM20, 0x38, P5FN)
                CreateWordField (TM20, 0x3A, P5VI)
                CreateWordField (TM20, 0x3C, P5DI)
                Store (0x3C, F20S)
                Store (RPBN, P0BN)
                Store (RPDN, P0DN)
                Store (RPFN, P0FN)
                Store (RPVI, P0VI)
                Store (RPDI, P0DI)
                Store (HUBN, P1BN)
                Store (HUDN, P1DN)
                Store (HUFN, P1FN)
                Store (HUVI, P1VI)
                Store (HUDI, P1DI)
                Store (HDBN, P2BN)
                Store (HDDN, P2DN)
                Store (HDFN, P2FN)
                Store (HDVI, P2VI)
                Store (HDDI, P2DI)
                Store (EUBN, P3BN)
                Store (EUDN, P3DN)
                Store (EUFN, P3FN)
                Store (EUVI, P3VI)
                Store (EUDI, P3DI)
                Store (EDBN, P4BN)
                Store (EDDN, P4DN)
                Store (EDFN, P4FN)
                Store (EDVI, P4VI)
                Store (EDDI, P4DI)
                Store (EPBN, P5BN)
                Store (EPDN, P5DN)
                Store (EPFN, P5FN)
                Store (EPVI, P5VI)
                Store (EPDI, P5DI)
                Return (TM20)
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414")))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("iGfx Supported Functions Bitmap ", Debug)
                            Return (0x0001E7FF)
                        }
                    }
                    Case (One)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store (" Adapter Power State Notification ", Debug)
                            If (LAnd (LEqual (S0ID, One), LLess (OSYS, 0x07DF)))
                            {
                                If (LEqual (And (DerefOf (Index (Arg3, Zero)), 0xFF), One))
                                {
                                    \GUAM (One)
                                }

                                Store (And (DerefOf (Index (Arg3, One)), 0xFF), Local0)
                                If (LEqual (Local0, Zero))
                                {
                                    \GUAM (0x02)
                                }
                            }

                            If (LEqual (DerefOf (Index (Arg3, Zero)), Zero))
                            {
                                Store (CLID, Local0)
                                If (And (0x80000000, Local0))
                                {
                                    And (CLID, 0x0F, CLID)
                                    GLID (CLID)
                                }
                            }

                            Return (One)
                        }
                    }
                    Case (0x02)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("Display Power State Notification ", Debug)
                            If (LAnd (LEqual (S0ID, One), LLess (OSYS, 0x07DF)))
                            {
                                Store (And (DerefOf (Index (Arg3, One)), 0xFF), Local0)
                                If (LEqual (Local0, Zero))
                                {
                                    \GUAM (Zero)
                                }
                            }

                            Return (One)
                        }
                    }
                    Case (0x03)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("BIOS POST Completion Notification ", Debug)
                            Return (One)
                        }
                    }
                    Case (0x04)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("Pre-Hires Set Mode ", Debug)
                            Return (One)
                        }
                    }
                    Case (0x05)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("Post-Hires Set Mode ", Debug)
                            Return (One)
                        }
                    }
                    Case (0x06)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("SetDisplayDeviceNotification", Debug)
                            Return (One)
                        }
                    }
                    Case (0x07)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("SetBootDevicePreference ", Debug)
                            And (DerefOf (Index (Arg3, Zero)), 0xFF, IBTT)
                            Return (One)
                        }
                    }
                    Case (0x08)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("SetPanelPreference ", Debug)
                            And (DerefOf (Index (Arg3, Zero)), 0xFF, IPSC)
                            If (And (DerefOf (Index (Arg3, One)), 0xFF))
                            {
                                And (DerefOf (Index (Arg3, One)), 0xFF, IPAT)
                                Decrement (IPAT)
                            }

                            And (ShiftRight (DerefOf (Index (Arg3, 0x02)), 0x04), 0x07, IBIA)
                            Return (One)
                        }
                    }
                    Case (0x09)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("FullScreenDOS ", Debug)
                            Return (One)
                        }
                    }
                    Case (0x0A)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("APM Complete ", Debug)
                            Store (ShiftLeft (LIDS, 0x08), Local0)
                            Add (Local0, 0x0100, Local0)
                            Return (Local0)
                        }
                    }
                    Case (0x0D)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("GetBootDisplayPreference ", Debug)
                            Or (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0)
                            And (Local0, 0xEFFF0000, Local0)
                            And (Local0, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), Local0)
                            Or (IBTT, Local0, Local0)
                            Return (Local0)
                        }
                    }
                    Case (0x0E)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("GetPanelDetails ", Debug)
                            Store (IPSC, Local0)
                            Or (Local0, ShiftLeft (IPAT, 0x08), Local0)
                            Add (Local0, 0x0100, Local0)
                            Or (Local0, ShiftLeft (LIDS, 0x10), Local0)
                            Add (Local0, 0x00010000, Local0)
                            Or (Local0, ShiftLeft (IBIA, 0x14), Local0)
                            Return (Local0)
                        }
                    }
                    Case (0x0F)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("GetInternalGraphics ", Debug)
                            Store (GIVD, Local0)
                            XOr (Local0, One, Local0)
                            Or (Local0, ShiftLeft (GMFN, One), Local0)
                            Or (Local0, 0x1800, Local0)
                            Or (Local0, ShiftLeft (IDMS, 0x11), Local0)
                            Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), Local0, Local0)
                            Return (Local0)
                        }
                    }
                    Case (0x10)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store ("GetAKSV ", Debug)
                            Name (KSVP, Package (0x02)
                            {
                                0x80000000, 
                                0x8000
                            })
                            Store (KSV0, Index (KSVP, Zero))
                            Store (KSV1, Index (KSVP, One))
                            Return (KSVP)
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (\_SB)
    {
        Device (SKC0)
        {
            Name (_HID, "INT3470")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (IMTP, 0x02))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Device (SKC0)
        {
            Name (_ADR, 0xCA00)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (IMTP, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (HBRB, Zero)
        Name (HBRD, Zero)
        Name (HBRF, Zero)
        Name (IVID, 0xFFFF)
        Name (PEBA, Zero)
        Name (PION, Zero)
        Name (PIOF, Zero)
        Name (PBUS, Zero)
        Name (PDEV, Zero)
        Name (PFUN, Zero)
        Name (EBUS, Zero)
        Name (EDEV, Zero)
        Name (EFN0, Zero)
        Name (EFN1, One)
        Name (INDX, Zero)
        Name (POFF, Zero)
        Name (PLEN, Zero)
        Name (VIOF, Zero)
        Name (DSOF, 0x06)
        Name (CPOF, 0x34)
        Name (SBOF, 0x19)
        Name (ELC0, Zero)
        Name (ECP0, 0xFFFFFFFF)
        Name (H0VI, Zero)
        Name (H0DI, Zero)
        Name (ELC1, Zero)
        Name (ECP1, 0xFFFFFFFF)
        Name (H1VI, Zero)
        Name (H1DI, Zero)
        Name (ELC2, Zero)
        Name (ECP2, 0xFFFFFFFF)
        Name (H2VI, Zero)
        Name (H2DI, Zero)
        Name (TIDX, Zero)
        Name (OTSD, Zero)
        Name (MXPG, 0x03)
        Name (FBDL, Zero)
        Name (CBDL, Zero)
        Name (MBDL, Zero)
        Name (HSTR, Zero)
        Name (LREV, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x012C)
        OperationRegion (OPG0, SystemMemory, Add (XBAS, 0x8000), 0x1000)
        Field (OPG0, AnyAcc, NoLock, Preserve)
        {
            P0VI,   16, 
            P0DI,   16, 
            Offset (0x06), 
            DSO0,   16, 
            Offset (0x34), 
            CPO0,   8, 
            Offset (0xB0), 
                ,   4, 
            P0LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P0L2,   1, 
            P0L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P0VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P0LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x504), 
            HST0,   32, 
            P0TR,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1, 
            Offset (0xC74), 
            P0LT,   4, 
            Offset (0xD0C), 
            LRV0,   32
        }

        OperationRegion (PCS0, SystemMemory, Add (XBAS, ShiftLeft (SBN0, 0x14)), 0xF0)
        Field (PCS0, DWordAcc, Lock, Preserve)
        {
            D0VI,   16, 
            Offset (0x2C), 
            S0VI,   16, 
            S0DI,   16
        }

        OperationRegion (CAP0, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN0, 0x14)), EECP), 0x14)
        Field (CAP0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP0,   32, 
            LCT0,   16
        }

        OperationRegion (OPG1, SystemMemory, Add (XBAS, 0x9000), 0x1000)
        Field (OPG1, AnyAcc, NoLock, Preserve)
        {
            P1VI,   16, 
            P1DI,   16, 
            Offset (0x06), 
            DSO1,   16, 
            Offset (0x34), 
            CPO1,   8, 
            Offset (0xB0), 
                ,   4, 
            P1LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P1L2,   1, 
            P1L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P1VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P1LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q1L2,   1, 
            Q1L0,   1, 
            Offset (0x504), 
            HST1,   32, 
            P1TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P1AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P1RM,   1, 
            Offset (0xC74), 
            P1LT,   4, 
            Offset (0xD0C), 
            LRV1,   32
        }

        OperationRegion (PCS1, SystemMemory, Add (XBAS, ShiftLeft (SBN1, 0x14)), 0xF0)
        Field (PCS1, DWordAcc, Lock, Preserve)
        {
            D1VI,   16, 
            Offset (0x2C), 
            S1VI,   16, 
            S1DI,   16
        }

        OperationRegion (CAP1, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN1, 0x14)), EEC1), 0x14)
        Field (CAP1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP1,   32, 
            LCT1,   16
        }

        OperationRegion (OPG2, SystemMemory, Add (XBAS, 0xA000), 0x1000)
        Field (OPG2, AnyAcc, NoLock, Preserve)
        {
            P2VI,   16, 
            P2DI,   16, 
            Offset (0x06), 
            DSO2,   16, 
            Offset (0x34), 
            CPO2,   8, 
            Offset (0xB0), 
                ,   4, 
            P2LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P2L2,   1, 
            P2L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P2VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P2LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q2L2,   1, 
            Q2L0,   1, 
            Offset (0x504), 
            HST2,   32, 
            P2TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P2AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P2RM,   1, 
            Offset (0xC74), 
            P2LT,   4, 
            Offset (0xD0C), 
            LRV2,   32
        }

        OperationRegion (PCS2, SystemMemory, Add (XBAS, ShiftLeft (SBN2, 0x14)), 0xF0)
        Field (PCS2, DWordAcc, Lock, Preserve)
        {
            D2VI,   16, 
            Offset (0x2C), 
            S2VI,   16, 
            S2DI,   16
        }

        OperationRegion (CAP2, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN2, 0x14)), EEC2), 0x14)
        Field (CAP2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP2,   32, 
            LCT2,   16
        }

        OperationRegion (MCD0, SystemMemory, XBAS, 0xF0)
        Field (MCD0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            MODI,   16
        }

        Method (PEGS, 0, Serialized)
        {
            Store (Zero, Local0)
            If (LEqual (And (CPEX, 0x0FFF0FF0), 0x000506E0))
            {
                If (LNotEqual (And (MODI, 0x06), 0x04))
                {
                    Store (One, Local0)
                }
            }

            Return (Local0)
        }

        Method (PGON, 1, Serialized)
        {
            Store (Arg0, PION)
            If (LEqual (PION, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA)
            Store (GDEV (PION), PDEV)
            Store (GFUN (PION), PFUN)
            Name (SCLK, Package (0x03)
            {
                One, 
                0x0100, 
                Zero
            })
            If (LNotEqual (DerefOf (Index (SCLK, Zero)), Zero))
            {
                PCRA (0xDC, 0x100C, Not (DerefOf (Index (SCLK, One))))
                Sleep (0x10)
            }

            If (LEqual (CCHK (PION, One), Zero))
            {
                Return (Zero)
            }

            GPPR (PION, One)
            If (LEqual (OSYS, 0x07D9))
            {
                If (LEqual (PION, Zero))
                {
                    Store (Zero, P0AP)
                    Store (Zero, P0RM)
                }
                ElseIf (LEqual (PION, One))
                {
                    Store (Zero, P1AP)
                    Store (Zero, P1RM)
                }
                ElseIf (LEqual (PION, 0x02))
                {
                    Store (Zero, P2AP)
                    Store (Zero, P2RM)
                }

                If (LNotEqual (PBGE, Zero))
                {
                    If (SBDL (PION))
                    {
                        PUAB (PION)
                        Store (GUBC (PION), CBDL)
                        Store (GMXB (PION), MBDL)
                        If (LGreater (CBDL, MBDL))
                        {
                            Store (MBDL, CBDL)
                        }

                        PDUB (PION, CBDL)
                    }
                }

                If (LEqual (PION, Zero))
                {
                    Store (Zero, P0LD)
                    Store (One, P0TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P0VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
                ElseIf (LEqual (PION, One))
                {
                    Store (Zero, P1LD)
                    Store (One, P1TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P1VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
                ElseIf (LEqual (PION, 0x02))
                {
                    Store (Zero, P2LD)
                    Store (One, P2TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P2VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
            }
            Else
            {
                LKEN (PION)
            }

            If (LEqual (PION, Zero))
            {
                Store (H0VI, S0VI)
                Store (H0DI, S0DI)
                Or (And (ELC0, 0x43), And (LCT0, 0xFFBC), LCT0)
            }
            ElseIf (LEqual (PION, One))
            {
                Store (H1VI, S1VI)
                Store (H1DI, S1DI)
                Or (And (ELC1, 0x43), And (LCT1, 0xFFBC), LCT1)
            }
            ElseIf (LEqual (PION, 0x02))
            {
                Store (H2VI, S2VI)
                Store (H2DI, S2DI)
                Or (And (ELC2, 0x43), And (LCT2, 0xFFBC), LCT2)
            }

            Return (Zero)
        }

        Method (PGOF, 1, Serialized)
        {
            Store (Arg0, PIOF)
            If (LEqual (PIOF, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA)
            Store (GDEV (PIOF), PDEV)
            Store (GFUN (PIOF), PFUN)
            Name (SCLK, Package (0x03)
            {
                One, 
                0x0100, 
                Zero
            })
            If (LEqual (CCHK (PIOF, Zero), Zero))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                Store (LCT0, ELC0)
                Store (S0VI, H0VI)
                Store (S0DI, H0DI)
                Store (LCP0, ECP0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCT1, ELC1)
                Store (S1VI, H1VI)
                Store (S1DI, H1DI)
                Store (LCP1, ECP1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCT2, ELC2)
                Store (S2VI, H2VI)
                Store (S2DI, H2DI)
                Store (LCP2, ECP2)
            }

            If (LEqual (OSYS, 0x07D9))
            {
                If (LEqual (PIOF, Zero))
                {
                    Store (One, P0LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P0LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P0RM)
                    Store (0x03, P0AP)
                }
                ElseIf (LEqual (PIOF, One))
                {
                    Store (One, P1LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P1LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P1RM)
                    Store (0x03, P1AP)
                }
                ElseIf (LEqual (PIOF, 0x02))
                {
                    Store (One, P2LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P2LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P2RM)
                    Store (0x03, P2AP)
                }

                If (LNotEqual (PBGE, Zero))
                {
                    If (SBDL (PIOF))
                    {
                        Store (GMXB (PIOF), MBDL)
                        PDUB (PIOF, MBDL)
                    }
                }
            }
            Else
            {
                LKDS (PIOF)
            }

            If (LNotEqual (DerefOf (Index (SCLK, Zero)), Zero))
            {
                PCRO (0xDC, 0x100C, DerefOf (Index (SCLK, One)))
                Sleep (0x10)
            }

            GPPR (PIOF, Zero)
            If (LNotEqual (OSYS, 0x07D9))
            {
                DIWK (PIOF)
            }

            Return (Zero)
        }

        Method (MMRB, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Return (TEMP)
        }

        Method (MMWB, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Store (Arg5, TEMP)
        }

        Method (MMRW, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Return (TEMP)
        }

        Method (MMWW, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Store (Arg5, TEMP)
        }

        Method (MMRD, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP)
        }

        Method (MMWD, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Store (Arg5, TEMP)
        }

        Method (GULC, 1, NotSerialized)
        {
            Store (MMRD (PEBA, PBUS, PDEV, PFUN, 0xAC), Local7)
            ShiftRight (Local7, 0x04, Local7)
            And (Local7, 0x3F, Local7)
            Store (Arg0, Local6)
            ShiftRight (Local6, 0x04, Local6)
            And (Local6, 0x3F, Local6)
            If (LGreater (Local7, Local6))
            {
                Subtract (Local7, Local6, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GMXB, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (0x08, Local0)
                }
                Else
                {
                    Store (0x04, Local0)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    Store (0x04, Local0)
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }

            Return (Local0)
        }

        Method (PUAB, 1, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Zero, CBDL)
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
                Store (LRV0, LREV)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
                Store (LRV1, LREV)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
                Store (LRV2, LREV)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            ShiftRight (LREV, 0x14, LREV)
            And (LREV, One, LREV)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (Zero, FBDL)
                    Store (0x08, CBDL)
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Zero, FBDL)
                    Store (0x04, CBDL)
                }
                Else
                {
                    Store (0x04, FBDL)
                    Store (0x04, CBDL)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL)
                        Store (0x04, CBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                        Store (0x04, CBDL)
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL)
                        Store (0x02, CBDL)
                    }
                    Else
                    {
                        Store (0x02, FBDL)
                        Store (0x02, CBDL)
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x06, FBDL)
                        Store (0x02, CBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                        Store (0x02, CBDL)
                    }
                }
            }

            Store (One, INDX)
            If (LNotEqual (CBDL, Zero))
            {
                While (LLessEqual (INDX, CBDL))
                {
                    If (LEqual (P0VI, IVID)){}
                    ElseIf (LNotEqual (P0VI, IVID))
                    {
                        If (LEqual (FBDL, Zero))
                        {
                            Store (Zero, BSP1)
                        }

                        If (LEqual (FBDL, One))
                        {
                            Store (Zero, BSP2)
                        }

                        If (LEqual (FBDL, 0x02))
                        {
                            Store (Zero, BSP3)
                        }

                        If (LEqual (FBDL, 0x03))
                        {
                            Store (Zero, BSP4)
                        }

                        If (LEqual (FBDL, 0x04))
                        {
                            Store (Zero, BSP5)
                        }

                        If (LEqual (FBDL, 0x05))
                        {
                            Store (Zero, BSP6)
                        }

                        If (LEqual (FBDL, 0x06))
                        {
                            Store (Zero, BSP7)
                        }

                        If (LEqual (FBDL, 0x07))
                        {
                            Store (Zero, BSP8)
                        }
                    }

                    Increment (FBDL)
                    Increment (INDX)
                }
            }
        }

        Method (PDUB, 2, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Arg1, CBDL)
            If (LEqual (CBDL, Zero))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
                Store (LRV0, LREV)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
                Store (LRV1, LREV)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
                Store (LRV2, LREV)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            ShiftRight (LREV, 0x14, LREV)
            And (LREV, One, LREV)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Subtract (0x04, CBDL), FBDL)
                }
                Else
                {
                    Store (0x04, FBDL)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x06, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (0x02, FBDL)
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
            }

            Store (One, INDX)
            While (LLessEqual (INDX, CBDL))
            {
                If (LEqual (P0VI, IVID)){}
                ElseIf (LNotEqual (P0VI, IVID))
                {
                    If (LEqual (FBDL, Zero))
                    {
                        Store (One, BSP1)
                    }

                    If (LEqual (FBDL, One))
                    {
                        Store (One, BSP2)
                    }

                    If (LEqual (FBDL, 0x02))
                    {
                        Store (One, BSP3)
                    }

                    If (LEqual (FBDL, 0x03))
                    {
                        Store (One, BSP4)
                    }

                    If (LEqual (FBDL, 0x04))
                    {
                        Store (One, BSP5)
                    }

                    If (LEqual (FBDL, 0x05))
                    {
                        Store (One, BSP6)
                    }

                    If (LEqual (FBDL, 0x06))
                    {
                        Store (One, BSP7)
                    }

                    If (LEqual (FBDL, 0x07))
                    {
                        Store (One, BSP8)
                    }
                }

                Increment (FBDL)
                Increment (INDX)
            }
        }

        Method (SBDL, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                Return (Zero)
            }

            Return (One)
        }

        Method (GUBC, 1, NotSerialized)
        {
            Store (Zero, Local7)
            If (LEqual (Arg0, Zero))
            {
                Store (LCP0, Local6)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCP1, Local6)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCP2, Local6)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P0UB, Zero))
                {
                    Store (P0UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P1UB, Zero))
                {
                    Store (P1UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P2UB, Zero))
                {
                    Store (P2UB, Local7)
                }
            }

            Return (Local7)
        }

        Method (LKEN, 1, NotSerialized)
        {
            And (CPEX, 0x0F, Local3)
            If (LEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, P0L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, P1L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, P2L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
            ElseIf (LNotEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, Q0L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, Q1L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q1L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, Q2L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q2L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
        }

        Method (LKDS, 1, NotSerialized)
        {
            And (CPEX, 0x0F, Local3)
            If (LEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, P0L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, P1L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P1L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, P2L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P2L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
            ElseIf (LNotEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, Q0L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q0L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, Q1L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q1L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, Q2L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q2L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
        }

        Method (DIWK, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                \_SB.PCI0.PEG0.P0EW ()
            }
            ElseIf (LEqual (Arg0, One))
            {
                \_SB.PCI0.PEG1.P1EW ()
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.PEG2.P2EW ()
            }
        }

        Method (GDEV, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (One, Local0)
            }

            Return (Local0)
        }

        Method (GFUN, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (Zero, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (0x02, Local0)
            }

            Return (Local0)
        }

        Method (CCHK, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (P1VI, Local7)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (P2VI, Local7)
            }

            If (LEqual (Local7, IVID))
            {
                Return (Zero)
            }

            If (LNotEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
                If (LEqual (Local7, IVID))
                {
                    Return (Zero)
                }
            }

            If (LEqual (Arg1, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), Zero))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, One))
                {
                    If (LEqual (SGPI (P1GP, PWE1, PWG1, PWA1), Zero))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (LEqual (SGPI (P2GP, PWE2, PWG2, PWA2), Zero))
                    {
                        Return (Zero)
                    }
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), One))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, One))
                {
                    If (LEqual (SGPI (P1GP, PWE1, PWG1, PWA1), One))
                    {
                        Return (Zero)
                    }
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (LEqual (SGPI (P2GP, PWE2, PWG2, PWA2), One))
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }

        Method (NTFY, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Notify (\_SB.PCI0.PEG0, Arg1)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Notify (\_SB.PCI0.PEG1, Arg1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Notify (\_SB.PCI0.PEG2, Arg1)
            }
        }

        Method (GPPR, 2, NotSerialized)
        {
            If (LEqual (Arg1, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    SGPO (SGGP, HRE0, HRG0, HRA0, One)
                    SGPO (SGGP, PWE0, PWG0, PWA0, Zero)
                }

                If (LEqual (Arg0, One))
                {
                    SGPO (P1GP, HRE1, HRG1, HRA1, One)
                    SGPO (P1GP, PWE1, PWG1, PWA1, Zero)
                }

                If (LEqual (Arg0, 0x02))
                {
                    SGPO (P2GP, HRE2, HRG2, HRA2, One)
                    SGPO (P2GP, PWE2, PWG2, PWA2, Zero)
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (Arg0, Zero))
                {
                    SGPO (SGGP, HRE0, HRG0, HRA0, One)
                    SGPO (SGGP, PWE0, PWG0, PWA0, One)
                    Sleep (DLPW)
                    SGPO (SGGP, HRE0, HRG0, HRA0, Zero)
                    Sleep (DLHR)
                }

                If (LEqual (Arg0, One))
                {
                    SGPO (P1GP, HRE1, HRG1, HRA1, One)
                    SGPO (P1GP, PWE1, PWG1, PWA1, One)
                    Sleep (DLPW)
                    SGPO (P1GP, HRE1, HRG1, HRA1, Zero)
                    Sleep (DLHR)
                }

                If (LEqual (Arg0, 0x02))
                {
                    SGPO (P2GP, HRE2, HRG2, HRA2, One)
                    SGPO (P2GP, PWE2, PWG2, PWA2, One)
                    Sleep (DLPW)
                    SGPO (P2GP, HRE2, HRG2, HRA2, Zero)
                    Sleep (DLHR)
                }
            }
        }

        Method (SGPO, 5, Serialized)
        {
            If (LEqual (Arg3, Zero))
            {
                Not (Arg4, Arg4)
                And (Arg4, One, Arg4)
            }

            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg2, Arg4)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
                And (Local0, One, Local0)
            }

            Return (Local0)
        }
    }
}

