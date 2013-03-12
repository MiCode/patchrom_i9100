.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 78
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 83
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 73
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 98
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 99
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 39
    .parameter "headers"

    .prologue
    .line 1836
    if-nez p0, :cond_0

    .line 1837
    const/16 v37, 0x0

    .line 2043
    :goto_0
    return v37

    .line 1841
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1844
    .local v8, messageType:I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1845
    .local v9, mmsVersion:I
    if-nez v9, :cond_1

    .line 1847
    const/16 v37, 0x0

    goto :goto_0

    .line 1851
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2040
    const/16 v37, 0x0

    goto :goto_0

    .line 1854
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1855
    .local v34, srContentType:[B
    if-nez v34, :cond_2

    .line 1856
    const/16 v37, 0x0

    goto :goto_0

    .line 1860
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 1861
    .local v35, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 1862
    const/16 v37, 0x0

    goto :goto_0

    .line 1866
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1867
    .local v36, srTransactionId:[B
    if-nez v36, :cond_15

    .line 1868
    const/16 v37, 0x0

    goto :goto_0

    .line 1874
    .end local v34           #srContentType:[B
    .end local v35           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36           #srTransactionId:[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1875
    .local v32, scResponseStatus:I
    if-nez v32, :cond_4

    .line 1876
    const/16 v37, 0x0

    goto :goto_0

    .line 1880
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1881
    .local v33, scTransactionId:[B
    if-nez v33, :cond_15

    .line 1882
    const/16 v37, 0x0

    goto :goto_0

    .line 1888
    .end local v32           #scResponseStatus:I
    .end local v33           #scTransactionId:[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1889
    .local v10, niContentLocation:[B
    if-nez v10, :cond_5

    .line 1890
    const/16 v37, 0x0

    goto :goto_0

    .line 1894
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1895
    .local v11, niExpiry:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_6

    .line 1896
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1900
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1901
    .local v13, niMessageClass:[B
    if-nez v13, :cond_7

    .line 1902
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1906
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1907
    .local v14, niMessageSize:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_8

    .line 1908
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1912
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1913
    .local v16, niTransactionId:[B
    if-nez v16, :cond_15

    .line 1914
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1920
    .end local v10           #niContentLocation:[B
    .end local v11           #niExpiry:J
    .end local v13           #niMessageClass:[B
    .end local v14           #niMessageSize:J
    .end local v16           #niTransactionId:[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1921
    .local v17, nriStatus:I
    if-nez v17, :cond_9

    .line 1922
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1926
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1927
    .local v18, nriTransactionId:[B
    if-nez v18, :cond_15

    .line 1928
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1934
    .end local v17           #nriStatus:I
    .end local v18           #nriTransactionId:[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1935
    .local v19, rcContentType:[B
    if-nez v19, :cond_a

    .line 1936
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1940
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1941
    .local v20, rcDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_15

    .line 1942
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1948
    .end local v19           #rcContentType:[B
    .end local v20           #rcDate:J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1949
    .local v3, diDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_b

    .line 1950
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1954
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1955
    .local v5, diMessageId:[B
    if-nez v5, :cond_c

    .line 1956
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1960
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1961
    .local v6, diStatus:I
    if-nez v6, :cond_d

    .line 1962
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1966
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1967
    .local v7, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 1968
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1974
    .end local v3           #diDate:J
    .end local v5           #diMessageId:[B
    .end local v6           #diStatus:I
    .end local v7           #diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1975
    .local v2, aiTransactionId:[B
    if-nez v2, :cond_15

    .line 1976
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1982
    .end local v2           #aiTransactionId:[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 1983
    .local v22, roDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_e

    .line 1984
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1988
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 1989
    .local v24, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 1990
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1994
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 1995
    .local v25, roMessageId:[B
    if-nez v25, :cond_10

    .line 1996
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2000
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2001
    .local v26, roReadStatus:I
    if-nez v26, :cond_11

    .line 2002
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2006
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2007
    .local v27, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 2008
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2014
    .end local v22           #roDate:J
    .end local v24           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25           #roMessageId:[B
    .end local v26           #roReadStatus:I
    .end local v27           #roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2015
    .local v28, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 2016
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2020
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2021
    .local v29, rrMessageId:[B
    if-nez v29, :cond_13

    .line 2022
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2026
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2027
    .local v30, rrReadStatus:I
    if-nez v30, :cond_14

    .line 2028
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2032
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2033
    .local v31, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 2034
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 2043
    .end local v28           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #rrMessageId:[B
    .end local v30           #rrReadStatus:I
    .end local v31           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1851
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1800
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1801
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1826
    :cond_1
    :goto_0
    return v2

    .line 1807
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1808
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1809
    .local v0, contentId:[B
    if-eqz v0, :cond_3

    .line 1810
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 1811
    goto :goto_0

    .line 1817
    .end local v0           #contentId:[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1818
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1819
    .local v1, contentType:[B
    if-eqz v1, :cond_1

    .line 1820
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1821
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1216
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1217
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1218
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1219
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1182
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1183
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1184
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1185
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1186
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1188
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1189
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1190
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1198
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1199
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1193
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1194
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1202
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1203
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1206
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 1166
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1177
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1170
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1177
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 1122
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1126
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1147
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 936
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1522
    :cond_0
    const/4 v0, 0x0

    .line 1523
    .local v0, contentType:[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1524
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1525
    .local v8, temp:I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1526
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1528
    and-int/lit16 v1, v8, 0xff

    .line 1530
    .local v1, cur:I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1531
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1532
    .local v5, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1533
    .local v7, startPos:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1534
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1535
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1536
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1537
    and-int/lit16 v3, v8, 0xff

    .line 1539
    .local v3, first:I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1540
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1555
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1556
    .local v2, endPos:I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1557
    .local v6, parameterLen:I
    if-lez v6, :cond_3

    .line 1558
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1561
    :cond_3
    if-gez v6, :cond_8

    .line 1562
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1572
    .end local v2           #endPos:I
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v6           #parameterLen:I
    .end local v7           #startPos:I
    :goto_1
    return-object v9

    .line 1541
    .restart local v3       #first:I
    .restart local v5       #length:I
    .restart local v7       #startPos:I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1542
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1544
    .local v4, index:I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1545
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1547
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1548
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1551
    .end local v4           #index:I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1565
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v7           #startPos:I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1566
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1572
    goto :goto_1

    .line 1568
    :cond_9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 19
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1350
    :cond_0
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1352
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1353
    .local v14, startPos:I
    const/4 v15, 0x0

    .line 1354
    .local v15, tempPos:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1355
    .local v10, lastLen:I
    :goto_0
    if-lez v10, :cond_c

    .line 1356
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 1357
    .local v12, param:I
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1358
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 1360
    sparse-switch v12, :sswitch_data_0

    .line 1491
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1492
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    :sswitch_0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1377
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1378
    .local v7, first:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1379
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_4

    .line 1381
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1383
    .local v9, index:I
    sget-object v17, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 1384
    sget-object v17, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 1385
    .local v16, type:[B
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .end local v9           #index:I
    .end local v16           #type:[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1398
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1399
    goto :goto_0

    .line 1391
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1392
    .restart local v16       #type:[B
    if-eqz v16, :cond_3

    if-eqz p1, :cond_3

    .line 1393
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1416
    .end local v7           #first:I
    .end local v16           #type:[B
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1417
    .local v13, start:[B
    if-eqz v13, :cond_5

    if-eqz p1, :cond_5

    .line 1418
    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1422
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1423
    goto/16 :goto_0

    .line 1440
    .end local v13           #start:[B
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1441
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1442
    .local v8, firstValue:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1444
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    :cond_6
    if-nez v8, :cond_9

    .line 1447
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1449
    .local v5, charsetStr:[B
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 1451
    .local v4, charsetInt:I
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    .end local v4           #charsetInt:I
    .end local v5           #charsetStr:[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1466
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1467
    goto/16 :goto_0

    .line 1452
    .restart local v5       #charsetStr:[B
    :catch_0
    move-exception v6

    .line 1454
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v17, "PduParser"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1459
    .end local v5           #charsetStr:[B
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .line 1460
    .local v3, charset:I
    if-eqz p1, :cond_8

    .line 1461
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1479
    .end local v3           #charset:I
    .end local v8           #firstValue:I
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1480
    .local v11, name:[B
    if-eqz v11, :cond_a

    if-eqz p1, :cond_a

    .line 1481
    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1485
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1486
    goto/16 :goto_0

    .line 1494
    .end local v11           #name:[B
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1500
    .end local v12           #param:I
    :cond_c
    if-eqz v10, :cond_d

    .line 1501
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_d
    return-void

    .line 1360
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/4 v7, 0x0

    .line 1012
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1013
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1016
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1017
    .local v5, temp:I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1023
    :cond_1
    if-nez v5, :cond_2

    .line 1048
    :goto_0
    return-object v7

    .line 1027
    :cond_2
    and-int/lit16 v2, v5, 0xff

    .line 1029
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1030
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    .line 1031
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1033
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1036
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1039
    .local v6, textString:[B
    if-eqz v0, :cond_4

    .line 1040
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1048
    goto :goto_0

    .line 1042
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1044
    :catch_0
    move-exception v1

    .line 1045
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/4 v7, 0x0

    .line 1581
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1582
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1583
    const/4 v3, 0x0

    .line 1584
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1585
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1586
    .local v5, temp:I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1592
    :cond_1
    if-nez v5, :cond_2

    .line 1616
    :goto_0
    return-object v7

    .line 1595
    :cond_2
    and-int/lit16 v2, v5, 0xff

    .line 1597
    .local v2, first:I
    if-lez v2, :cond_4

    .line 1598
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1599
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    .line 1600
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1601
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1604
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1607
    .local v6, textString:[B
    if-eqz v0, :cond_5

    .line 1608
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6           #textString:[B
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    :goto_1
    move-object v7, v3

    .line 1616
    goto :goto_0

    .line 1610
    .restart local v6       #textString:[B
    :cond_5
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1612
    :catch_0
    move-exception v1

    .line 1613
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    .line 1291
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1292
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1293
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1294
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1295
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1296
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1297
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1299
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1259
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1260
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1261
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1262
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1264
    .local v0, count:I
    if-le v0, v8, :cond_2

    .line 1265
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1268
    :cond_2
    const-wide/16 v2, 0x0

    .line 1270
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1271
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1272
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1273
    :cond_3
    shl-long/2addr v2, v8

    .line 1274
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 20
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1629
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1630
    :cond_0
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    if-nez p1, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1631
    :cond_1
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    if-gtz p2, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1649
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 1650
    .local v9, startPos:I
    const/4 v12, 0x0

    .line 1651
    .local v12, tempPos:I
    move/from16 v7, p2

    .line 1652
    .local v7, lastLen:I
    :cond_3
    :goto_0
    if-lez v7, :cond_11

    .line 1653
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1654
    .local v5, header:I
    sget-boolean v17, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_4

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1655
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 1657
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v5, v0, :cond_d

    .line 1659
    sparse-switch v5, :sswitch_data_0

    .line 1751
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1752
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/16 v17, 0x0

    .line 1789
    .end local v5           #header:I
    :goto_1
    return v17

    .line 1665
    .restart local v5       #header:I
    :sswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1666
    .local v4, contentLocation:[B
    if-eqz v4, :cond_5

    .line 1667
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1670
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1671
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1672
    goto :goto_0

    .line 1678
    .end local v4           #contentLocation:[B
    :sswitch_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1679
    .local v3, contentId:[B
    if-eqz v3, :cond_6

    .line 1680
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1683
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1684
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1685
    goto :goto_0

    .line 1701
    .end local v3           #contentId:[B
    :sswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110033

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1704
    .local v2, contentDisposition:Z
    if-eqz v2, :cond_3

    .line 1706
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1707
    .local v8, len:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1708
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1709
    .local v15, thisStartPos:I
    const/4 v14, 0x0

    .line 1710
    .local v14, thisEndPos:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1712
    .local v16, value:I
    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1713
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1726
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1727
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1728
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v16

    .line 1729
    const/16 v17, 0x98

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1730
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1735
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1736
    sub-int v17, v15, v14

    move/from16 v0, v17

    if-ge v0, v8, :cond_8

    .line 1737
    sub-int v17, v15, v14

    sub-int v6, v8, v17

    .line 1738
    .local v6, last:I
    new-array v10, v6, [B

    .line 1739
    .local v10, temp:[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1743
    .end local v6           #last:I
    .end local v10           #temp:[B
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1744
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1745
    goto/16 :goto_0

    .line 1714
    :cond_9
    const/16 v17, 0x81

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1715
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1716
    :cond_a
    const/16 v17, 0x82

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1717
    sget-object v17, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1719
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1721
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_2

    .line 1755
    .end local v2           #contentDisposition:Z
    .end local v8           #len:I
    .end local v14           #thisEndPos:I
    .end local v15           #thisStartPos:I
    .end local v16           #value:I
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1758
    :cond_d
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v5, v0, :cond_f

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-gt v5, v0, :cond_f

    .line 1760
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1761
    .local v11, tempHeader:[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1764
    .local v13, tempValue:[B
    const/16 v17, 0x1

    const-string v18, "Content-Transfer-Encoding"

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1766
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1769
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1770
    sub-int v17, v9, v12

    sub-int v7, p2, v17

    .line 1771
    goto/16 :goto_0

    .line 1776
    .end local v11           #tempHeader:[B
    .end local v13           #tempValue:[B
    :cond_f
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1777
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1780
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1784
    .end local v5           #header:I
    :cond_11
    if-eqz v7, :cond_12

    .line 1785
    const-string v17, "PduParser"

    const-string v18, "Corrupt Part headers"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1789
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1659
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .locals 27
    .parameter "pduDataStream"
    .parameter "contType"

    .prologue
    .line 782
    if-nez p0, :cond_1

    .line 783
    const/4 v3, 0x0

    .line 924
    :cond_0
    :goto_0
    return-object v3

    .line 786
    :cond_1
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 788
    .local v3, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 789
    .local v8, ctTypeStr:Ljava/lang/String;
    const-string v25, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-string v25, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 792
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 794
    .local v7, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v7, :cond_0

    .line 795
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 796
    .local v12, headerLength:I
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 797
    .local v9, dataLength:I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 798
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v24

    .line 799
    .local v24, startPos:I
    if-gtz v24, :cond_3

    .line 801
    const/4 v3, 0x0

    goto :goto_0

    .line 805
    :cond_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 807
    .local v6, contentType:[B
    if-eqz v6, :cond_6

    .line 808
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 814
    :goto_2
    const/16 v25, 0x97

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    move-object/from16 v15, v25

    check-cast v15, [B

    .line 815
    .local v15, name:[B
    if-eqz v15, :cond_4

    .line 816
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 820
    :cond_4
    const/16 v25, 0x81

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 821
    .local v4, charset:Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 822
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 826
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 827
    .local v11, endPos:I
    sub-int v25, v24, v11

    sub-int v20, v12, v25

    .line 828
    .local v20, partHeaderLen:I
    if-lez v20, :cond_7

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v25

    if-nez v25, :cond_8

    .line 831
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 810
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v11           #endPos:I
    .end local v15           #name:[B
    .end local v20           #partHeaderLen:I
    :cond_6
    sget-object v25, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 833
    .restart local v4       #charset:Ljava/lang/Integer;
    .restart local v11       #endPos:I
    .restart local v15       #name:[B
    .restart local v20       #partHeaderLen:I
    :cond_7
    if-gez v20, :cond_8

    .line 835
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 841
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v25

    if-nez v25, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v25

    if-nez v25, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v25

    if-nez v25, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v25

    if-nez v25, :cond_9

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 850
    :cond_9
    if-lez v9, :cond_b

    .line 851
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 852
    .local v18, partData:[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 853
    .local v17, partContentType:Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v21

    .line 855
    .local v21, pduDataStreamCount:I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 856
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 858
    :cond_a
    const-string v25, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 861
    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 864
    .local v5, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 889
    .end local v5           #childBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v17           #partContentType:Ljava/lang/String;
    .end local v18           #partData:[B
    .end local v21           #pduDataStreamCount:I
    :cond_b
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v25

    if-nez v25, :cond_10

    .line 891
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 794
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 867
    .restart local v17       #partContentType:Ljava/lang/String;
    .restart local v18       #partData:[B
    .restart local v21       #pduDataStreamCount:I
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 868
    .local v19, partDataEncoding:[B
    if-eqz v19, :cond_d

    .line 869
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 870
    .local v10, encoding:Ljava/lang/String;
    const-string v25, "base64"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 872
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v18

    .line 880
    .end local v10           #encoding:Ljava/lang/String;
    :cond_d
    :goto_5
    if-nez v18, :cond_f

    .line 881
    const-string v25, "Decode part data error!"

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 882
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 873
    .restart local v10       #encoding:Ljava/lang/String;
    :cond_e
    const-string v25, "quoted-printable"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 875
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_5

    .line 884
    .end local v10           #encoding:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 894
    .end local v17           #partContentType:Ljava/lang/String;
    .end local v18           #partData:[B
    .end local v19           #partDataEncoding:[B
    .end local v21           #pduDataStreamCount:I
    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .line 898
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v6           #contentType:[B
    .end local v7           #count:I
    .end local v9           #dataLength:I
    .end local v11           #endPos:I
    .end local v12           #headerLength:I
    .end local v13           #i:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v15           #name:[B
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #partHeaderLen:I
    .end local v24           #startPos:I
    :cond_11
    const-string v25, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 900
    new-instance v22, Ljava/lang/String;

    const-string v25, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 905
    .local v22, smilDoc:Ljava/lang/String;
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 906
    .local v23, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v25, "smil.txt"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 907
    const-string v25, "smil.txt"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 908
    const-string v25, "application/smil"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 909
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 910
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 912
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 913
    .restart local v16       #part:Lcom/google/android/mms/pdu/PduPart;
    const-string v25, "attach.txt"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 914
    const-string v25, "attach.txt"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 915
    const-string v25, "text/plain"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 916
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 917
    .restart local v9       #dataLength:I
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 918
    .restart local v18       #partData:[B
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 919
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 920
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1236
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1237
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1238
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1239
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 950
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 951
    :cond_0
    const/4 v0, 0x0

    .line 952
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 953
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 969
    :goto_0
    return v2

    .line 957
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 958
    shl-int/lit8 v0, v0, 0x7

    .line 959
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 960
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 961
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 962
    goto :goto_0

    .line 966
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 967
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 969
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    .line 987
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 988
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 989
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 990
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 992
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 995
    .end local v0           #first:I
    :goto_0
    return v0

    .line 994
    .restart local v0       #first:I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 995
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 998
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1060
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1078
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1081
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1082
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1083
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1086
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1101
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1087
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1090
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1093
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1311
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1312
    :cond_0
    new-array v0, p1, [B

    .line 1313
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1314
    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    .line 1315
    const/4 v1, -0x1

    .line 1317
    .end local v1           #readLen:I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 18

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v15, :cond_1

    .line 109
    const/4 v12, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v12

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v15, :cond_2

    .line 116
    const/4 v12, 0x0

    goto :goto_0

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x8c

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v7

    .line 126
    .local v7, messageType:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v16, 0x84

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 130
    .local v2, contType:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 131
    const-string v15, "check mandatory headers failed!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 132
    const/4 v12, 0x0

    goto :goto_0

    .line 135
    :cond_3
    const/16 v15, 0x80

    if-eq v15, v7, :cond_4

    const/16 v15, 0x84

    if-ne v15, v7, :cond_6

    .line 139
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v15, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v15, :cond_5

    .line 143
    const/4 v12, 0x0

    goto :goto_0

    .line 146
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 147
    .local v4, ctTypeStr:Ljava/lang/String;
    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v16, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x84

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 154
    .end local v4           #ctTypeStr:Ljava/lang/String;
    :cond_6
    packed-switch v7, :pswitch_data_0

    .line 214
    const-string v15, "Parser doesn\'t support this message type in this version!"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 215
    const/4 v12, 0x0

    goto :goto_0

    .line 156
    :pswitch_0
    new-instance v14, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v14, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v14

    .line 157
    goto/16 :goto_0

    .line 159
    .end local v14           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v13, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13, v15}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v13

    .line 160
    goto/16 :goto_0

    .line 162
    .end local v13           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v8, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v15}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v8

    .line 164
    goto/16 :goto_0

    .line 166
    .end local v8           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v9, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v9, v15}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v9

    .line 168
    goto/16 :goto_0

    .line 170
    .end local v9           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v12, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 173
    .local v12, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 174
    .local v3, contentType:[B
    if-nez v3, :cond_7

    .line 175
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 178
    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 179
    .restart local v4       #ctTypeStr:Ljava/lang/String;
    const-string v15, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "text/plain"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 188
    const-string v15, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 192
    .local v6, firstPart:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 196
    .end local v6           #firstPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 198
    .end local v3           #contentType:[B
    .end local v4           #ctTypeStr:Ljava/lang/String;
    .end local v12           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v5, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v15}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v5

    .line 200
    goto/16 :goto_0

    .line 202
    .end local v5           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v15}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v1, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v1

    .line 204
    goto/16 :goto_0

    .line 206
    .end local v1           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v10, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v15}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v10

    .line 208
    goto/16 :goto_0

    .line 210
    .end local v10           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v11, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11, v15}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v11

    .line 212
    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 31
    .parameter "pduDataStream"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    const/4 v11, 0x0

    .line 771
    :cond_0
    :goto_0
    return-object v11

    .line 230
    :cond_1
    const/4 v12, 0x1

    .line 231
    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 233
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_0

    .line 234
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 235
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 237
    .local v10, headerField:I
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v10, v0, :cond_3

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-gt v10, v0, :cond_3

    .line 238
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 239
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 244
    .local v4, bVal:[B
    goto :goto_1

    .line 246
    .end local v4           #bVal:[B
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 766
    :pswitch_0
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 250
    .local v16, messageType:I
    packed-switch v16, :pswitch_data_1

    .line 270
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 271
    :catch_0
    move-exception v6

    .line 272
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 274
    const/4 v11, 0x0

    goto :goto_0

    .line 267
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/4 v11, 0x0

    goto :goto_0

    .line 275
    :catch_1
    move-exception v6

    .line 276
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 277
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 310
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 313
    .local v24, value:I
    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 314
    :catch_2
    move-exception v6

    .line 315
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 317
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 318
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .line 319
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 320
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 331
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 332
    .local v24, value:J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 333
    .end local v24           #value:J
    :catch_4
    move-exception v6

    .line 334
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 335
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 346
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 347
    .restart local v24       #value:J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 348
    .end local v24           #value:J
    :catch_5
    move-exception v6

    .line 349
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 350
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 376
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 377
    .local v24, value:[B
    if-eqz v24, :cond_2

    .line 379
    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 380
    :catch_6
    move-exception v6

    .line 381
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .line 383
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 384
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 394
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 395
    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_4

    .line 397
    :try_start_5
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 398
    :catch_8
    move-exception v6

    .line 399
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .line 401
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 402
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 405
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_4
    const-string v27, "Subject is null!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 420
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 422
    :try_start_6
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_1

    .line 423
    :catch_a
    move-exception v6

    .line 424
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_b
    move-exception v6

    .line 426
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 427
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 438
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 440
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 441
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 442
    .local v3, address:[B
    if-eqz v3, :cond_6

    .line 443
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 444
    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 445
    .local v7, endIndex:I
    if-lez v7, :cond_5

    .line 446
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 449
    :cond_5
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_d

    .line 457
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_6
    :try_start_8
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    goto/16 :goto_1

    .line 458
    :catch_c
    move-exception v6

    .line 459
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_d
    move-exception v6

    .line 451
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 452
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 460
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_e
    move-exception v6

    .line 461
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 475
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 483
    .local v23, token:I
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_10

    move-result-wide v21

    .line 488
    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 495
    :cond_7
    :try_start_a
    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_1

    .line 496
    :catch_f
    move-exception v6

    .line 497
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 498
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 484
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_10
    move-exception v6

    .line 485
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 486
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 508
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_b
    const/4 v8, 0x0

    .line 510
    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    .line 517
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 520
    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v9, :cond_a

    .line 522
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 523
    if-eqz v8, :cond_9

    .line 524
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 525
    .restart local v3       #address:[B
    if-eqz v3, :cond_9

    .line 526
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 527
    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 528
    .restart local v7       #endIndex:I
    if-lez v7, :cond_8

    .line 529
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 532
    :cond_8
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_13

    .line 550
    .end local v3           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_9
    :goto_2
    const/16 v27, 0x89

    :try_start_d
    move/from16 v0, v27

    invoke-virtual {v11, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_15

    goto/16 :goto_1

    .line 551
    :catch_11
    move-exception v6

    .line 552
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 511
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v9           #fromToken:I
    :catch_12
    move-exception v6

    .line 512
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v27, "parseValueLength RuntimeException!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 513
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 533
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v3       #address:[B
    .restart local v7       #endIndex:I
    .restart local v9       #fromToken:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_13
    move-exception v6

    .line 534
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 535
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 541
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_a
    :try_start_e
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_14

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 543
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_14
    move-exception v6

    .line 544
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 545
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 553
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_15
    move-exception v6

    .line 554
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 555
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 562
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_c
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 563
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 565
    .local v14, messageClass:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v14, v0, :cond_e

    .line 568
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v14, :cond_b

    .line 569
    :try_start_f
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_17

    goto/16 :goto_1

    .line 585
    :catch_16
    move-exception v6

    .line 586
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_b
    const/16 v27, 0x81

    move/from16 v0, v27

    if-ne v0, v14, :cond_c

    .line 573
    :try_start_10
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_17

    goto/16 :goto_1

    .line 587
    :catch_17
    move-exception v6

    .line 588
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 589
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 576
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_c
    const/16 v27, 0x82

    move/from16 v0, v27

    if-ne v0, v14, :cond_d

    .line 577
    :try_start_11
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 580
    :cond_d
    const/16 v27, 0x83

    move/from16 v0, v27

    if-ne v0, v14, :cond_2

    .line 581
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_17

    goto/16 :goto_1

    .line 593
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 594
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 595
    .local v15, messageClassString:[B
    if-eqz v15, :cond_2

    .line 597
    const/16 v27, 0x8a

    :try_start_12
    move/from16 v0, v27

    invoke-virtual {v11, v15, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_19

    goto/16 :goto_1

    .line 598
    :catch_18
    move-exception v6

    .line 599
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_19
    move-exception v6

    .line 601
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 602
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 610
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 613
    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_13
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_13
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 614
    :catch_1a
    move-exception v6

    .line 615
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 617
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 618
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1b
    move-exception v6

    .line 619
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 620
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 629
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 633
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 640
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 642
    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_2

    .line 644
    const/16 v27, 0xa0

    :try_start_15
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1e

    goto/16 :goto_1

    .line 646
    :catch_1c
    move-exception v6

    .line 647
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1d
    move-exception v6

    .line 635
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 636
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 648
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1e
    move-exception v6

    .line 649
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 650
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 660
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 664
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_20

    .line 672
    :try_start_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 673
    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-wide/from16 v0, v17

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    goto/16 :goto_1

    .line 675
    .end local v17           #perviouslySentDate:J
    :catch_1f
    move-exception v6

    .line 676
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 677
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 665
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_20
    move-exception v6

    .line 666
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 667
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 690
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 693
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 696
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 709
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 712
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 716
    :try_start_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_21

    goto/16 :goto_1

    .line 717
    :catch_21
    move-exception v6

    .line 718
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 719
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 728
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_12
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 736
    :pswitch_13
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 738
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 741
    .local v5, contentType:[B
    if-eqz v5, :cond_f

    .line 743
    const/16 v27, 0x84

    :try_start_19
    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_23

    .line 753
    :cond_f
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 756
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 758
    const/4 v12, 0x0

    .line 759
    goto/16 :goto_1

    .line 744
    :catch_22
    move-exception v6

    .line 745
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 746
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_23
    move-exception v6

    .line 747
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 748
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_13
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_1
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_6
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_12
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 250
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
