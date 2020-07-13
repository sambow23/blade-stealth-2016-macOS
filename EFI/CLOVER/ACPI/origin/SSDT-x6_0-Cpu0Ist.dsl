/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x6_0-Cpu0Ist.aml, Fri Jul 10 10:13:46 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000660 (1632)
 *     Revision         0x02
 *     Checksum         0xCF
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_PR.CPPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (And (\_SB.OSCP, 0x0400))
            {
                Return (TPSS)
            }
            Else
            {
                Return (LPSS)
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x000009C5, 
                0x00003A98, 
                0x0000000A, 
                0x0000000A, 
                0x00001A00, 
                0x00001A00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x0000379C, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x000034AF, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x000031D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x00002C3D, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x0000298B, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x000024D5, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x00002249, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00001D5A, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00001920, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x000016D5, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x00001265, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x00000E2A, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002BC, 
                0x00000C1F, 
                0x0000000A, 
                0x0000000A, 
                0x00000700, 
                0x00000700
            }, 

            Package (0x06)
            {
                0x00000258, 
                0x00000A96, 
                0x0000000A, 
                0x0000000A, 
                0x00000600, 
                0x00000600
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x000006BA, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }, 

            Name (TPSS, Package (0x18)
            {
                Package (0x06)
                {
                    0x00000A29, 
                    0x00003A98, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001F00, 
                    0x00001F00
                }, 

                Package (0x06)
                {
                    0x00000A28, 
                    0x00003A98, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001A00, 
                    0x00001A00
                }, 

                Package (0x06)
                {
                    0x000009C4, 
                    0x0000379C, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001900, 
                    0x00001900
                }, 

                Package (0x06)
                {
                    0x00000960, 
                    0x000034AF, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001800, 
                    0x00001800
                }, 

                Package (0x06)
                {
                    0x000008FC, 
                    0x000031D0, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001700, 
                    0x00001700
                }, 

                Package (0x06)
                {
                    0x00000898, 
                    0x00002EFF, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001600, 
                    0x00001600
                }, 

                Package (0x06)
                {
                    0x00000834, 
                    0x00002C3D, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001500, 
                    0x00001500
                }, 

                Package (0x06)
                {
                    0x000007D0, 
                    0x0000298B, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001400, 
                    0x00001400
                }, 

                Package (0x06)
                {
                    0x0000076C, 
                    0x0000276F, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001300, 
                    0x00001300
                }, 

                Package (0x06)
                {
                    0x00000708, 
                    0x000024D5, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001200, 
                    0x00001200
                }, 

                Package (0x06)
                {
                    0x000006A4, 
                    0x00002249, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001100, 
                    0x00001100
                }, 

                Package (0x06)
                {
                    0x00000640, 
                    0x00001FCA, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001000, 
                    0x00001000
                }, 

                Package (0x06)
                {
                    0x000005DC, 
                    0x00001D5A, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000F00, 
                    0x00000F00
                }, 

                Package (0x06)
                {
                    0x00000578, 
                    0x00001AF6, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000E00, 
                    0x00000E00
                }, 

                Package (0x06)
                {
                    0x00000514, 
                    0x00001920, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000D00, 
                    0x00000D00
                }, 

                Package (0x06)
                {
                    0x000004B0, 
                    0x000016D5, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000C00, 
                    0x00000C00
                }, 

                Package (0x06)
                {
                    0x0000044C, 
                    0x00001497, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000B00, 
                    0x00000B00
                }, 

                Package (0x06)
                {
                    0x000003E8, 
                    0x00001265, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000A00, 
                    0x00000A00
                }, 

                Package (0x06)
                {
                    0x00000384, 
                    0x00001042, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000900, 
                    0x00000900
                }, 

                Package (0x06)
                {
                    0x00000320, 
                    0x00000E2A, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000800, 
                    0x00000800
                }, 

                Package (0x06)
                {
                    0x000002BC, 
                    0x00000C1F, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000700, 
                    0x00000700
                }, 

                Package (0x06)
                {
                    0x00000258, 
                    0x00000A96, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000600, 
                    0x00000600
                }, 

                Package (0x06)
                {
                    0x000001F4, 
                    0x000008A2, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000500, 
                    0x00000500
                }, 

                Package (0x06)
                {
                    0x00000190, 
                    0x000006BA, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000400, 
                    0x00000400
                }
            })
        })
        Zero
        Zero
        0x0000000A
        0x00001400
        0x00001400
        Package (0x06)
        {
            0x0000076C, 
            0x0000276F, 
            0x0000000A, 
            0x0000000A, 
            0x00001300, 
            0x00001300
        }

        Package (0x06)
        {
            0x00000708, 
            0x000024D5, 
            0x0000000A, 
            0x0000000A, 
            0x00001200, 
            0x00001200
        }

        Package (0x06)
        {
            0x000006A4, 
            0x00002249, 
            0x0000000A, 
            0x0000000A, 
            0x00001100, 
            0x00001100
        }

        Package (0x06)
        {
            0x00000640, 
            0x00001FCA, 
            0x0000000A, 
            0x0000000A, 
            0x00001000, 
            0x00001000
        }

        Package (0x06)
        {
            0x000005DC, 
            0x00001D5A, 
            0x0000000A, 
            0x0000000A, 
            0x00000F00, 
            0x00000F00
        }

        Package (0x06)
        {
            0x00000578, 
            0x00001AF6, 
            0x0000000A, 
            0x0000000A, 
            0x00000E00, 
            0x00000E00
        }

        Package (0x06)
        {
            0x00000514, 
            0x00001920, 
            0x0000000A, 
            0x0000000A, 
            0x00000D00, 
            0x00000D00
        }

        Package (0x06)
        {
            0x000004B0, 
            0x000016D5, 
            0x0000000A, 
            0x0000000A, 
            0x00000C00, 
            0x00000C00
        }

        Package (0x06)
        {
            0x0000044C, 
            0x00001497, 
            0x0000000A, 
            0x0000000A, 
            0x00000B00, 
            0x00000B00
        }

        Package (0x06)
        {
            0x000003E8, 
            0x00001265, 
            0x0000000A, 
            0x0000000A, 
            0x00000A00, 
            0x00000A00
        }

        Package (0x06)
        {
            0x00000384, 
            0x00001042, 
            0x0000000A, 
            0x0000000A, 
            0x00000900, 
            0x00000900
        }

        Package (0x06)
        {
            0x00000320, 
            0x00000E2A, 
            0x0000000A, 
            0x0000000A, 
            0x00000800, 
            0x00000800
        }

        Package (0x06)
        {
            0x000002BC, 
            0x00000C1F, 
            0x0000000A, 
            0x0000000A, 
            0x00000700, 
            0x00000700
        }

        Package (0x06)
        {
            0x00000258, 
            0x00000A96, 
            0x0000000A, 
            0x0000000A, 
            0x00000600, 
            0x00000600
        }

        Package (0x06)
        {
            0x000001F4, 
            0x000008A2, 
            0x0000000A, 
            0x0000000A, 
            0x00000500, 
            0x00000500
        }

        Package (0x06)
        {
            0x00000190, 
            0x000006BA, 
            0x0000000A, 
            0x0000000A, 
            0x00000400, 
            0x00000400
        }

        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

