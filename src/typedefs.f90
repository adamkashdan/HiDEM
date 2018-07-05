MODULE TypeDefs

  REAL*8 :: part_expand=0.5
  INTEGER :: myid, ntasks
  INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(12)

  INCLUDE 'param.dat'

  !Types are defined here to save passing large numbers of arguments.
  !Type members refer to the arrays belonging to partitions:
  !M = 'mine', F,B,R,L = Forward, Back, Right, Left, etc

  TYPE NAN_t
     INTEGER :: M(3,NOCON), L(3,NOMA), R(3,NOMA), F(3,NOMA), B(3,NOMA), &
          FR(3,NOMA), FL(3,NOMA), BR(3,NOMA), BL(3,NOMA)
  END TYPE NAN_t

  TYPE NTOT_t
     INTEGER :: M=0, L=0, R=0, F=0, B=0, FR=0, FL=0, BR=0, BL=0
  END TYPE NTOT_t

  TYPE NRXF_t
     REAL*8 :: M(3,NOMA), L(3,NOMA), R(3,NOMA), F(3,NOMA), B(3,NOMA), &
          FR(3,NOMA), FL(3,NOMA), BR(3,NOMA), BL(3,NOMA)
  END TYPE NRXF_t

  TYPE NRXF2_t
     REAL*8, ALLOCATABLE :: A(:,:)
     REAL*8, POINTER :: M(:,:)=>NULL(), P(:,:)=>NULL()
     INTEGER, ALLOCATABLE :: part(:)
  END TYPE NRXF2_t

  TYPE EF_t
     REAL*8 :: M(NOCON),L(NOCON),R(NOCON),F(NOCON),B(NOCON),FR(NOCON),&
          FL(NOCON),BR(NOCON),BL(NOCON)
  END TYPE EF_t

  TYPE NEI_t
     INTEGER :: L=-1,R=-1,F=-1,B=-1,FR=-1,FL=-1,BR=-1,BL=-1
  END TYPE NEI_t

  TYPE UT_t
     REAL*8 :: M(NODM), L(NODM), R(NODM), F(NODM),&
          B(NODM), FR(NODM),FL(NODM), BR(NODM), BL(NODM)
  END TYPE UT_t

  TYPE UT2_t
     REAL*8, ALLOCATABLE :: A(:)
     REAL*8, POINTER :: M(:)=>NULL(), P(:)=>NULL()
  END TYPE UT2_t

  TYPE FXF_t
     INTEGER :: M(2,NODC),L(2,NODC),R(2,NODC),F(2,NODC),B(2,NODC),&
          FR(2,NODC),FL(2,NODC),BR(2,NODC),BL(2,NODC)
  END TYPE FXF_t

  TYPE PointEx_t
     INTEGER :: partid,scount,rcount
     INTEGER, ALLOCATABLE :: SendIDs(:), RecvIDs(:)
     REAL*8, ALLOCATABLE :: S(:),R(:)
  END TYPE PointEx_t
END MODULE TypeDefs
