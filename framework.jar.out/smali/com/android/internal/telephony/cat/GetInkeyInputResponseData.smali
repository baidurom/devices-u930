.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 82
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 83
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 95
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 16
    .parameter "buf"

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 104
    :cond_1
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    or-int/lit16 v11, v13, 0x80

    .line 105
    .local v11, tag:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v13, :cond_3

    .line 110
    const/4 v13, 0x1

    new-array v4, v13, [B

    .line 111
    .local v4, data:[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    aput-byte v13, v4, v14

    .line 154
    :goto_1
    array-length v13, v4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 158
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v13, :cond_8

    .line 159
    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    :goto_2
    move-object v1, v4

    .local v1, arr$:[B
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_0

    aget-byte v2, v1, v8

    .line 167
    .local v2, b:B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 111
    .end local v1           #arr$:[B
    .end local v2           #b:B
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 112
    .end local v4           #data:[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 114
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v13, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v14, "UTF-16"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 118
    .restart local v4       #data:[B
    array-length v13, v4

    add-int/lit8 v13, v13, -0x2

    new-array v5, v13, [B

    .line 119
    .local v5, datatmp:[B
    const/4 v13, 0x2

    const/4 v14, 0x0

    array-length v15, v4

    add-int/lit8 v15, v15, -0x2

    invoke-static {v4, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    add-int/lit8 v13, v7, 0x1

    array-length v14, v5

    if-ge v13, v14, :cond_4

    .line 124
    add-int/lit8 v13, v7, 0x1

    aget-byte v3, v5, v13

    .line 125
    .local v3, bytetmp:B
    add-int/lit8 v13, v7, 0x1

    aget-byte v14, v5, v7

    aput-byte v14, v5, v13

    .line 126
    aput-byte v3, v5, v7

    .line 121
    add-int/lit8 v7, v7, 0x2

    goto :goto_4

    .line 128
    .end local v3           #bytetmp:B
    :cond_4
    move-object v4, v5

    .line 130
    goto :goto_1

    .end local v4           #data:[B
    .end local v5           #datatmp:[B
    .end local v7           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v13, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 133
    .local v10, size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v12

    .line 135
    .local v12, tempData:[B
    new-array v4, v10, [B

    .line 139
    .restart local v4       #data:[B
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v13, v4, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 143
    .end local v4           #data:[B
    .end local v10           #size:I
    .end local v12           #tempData:[B
    :catch_0
    move-exception v6

    .line 144
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const/4 v13, 0x0

    new-array v4, v13, [B

    .line 147
    .restart local v4       #data:[B
    goto/16 :goto_1

    .line 141
    .end local v4           #data:[B
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4       #data:[B
    goto/16 :goto_1

    .line 145
    .end local v4           #data:[B
    :catch_1
    move-exception v6

    .line 146
    .local v6, e:Lcom/android/internal/telephony/EncodeException;
    const/4 v13, 0x0

    new-array v4, v13, [B

    .line 147
    .restart local v4       #data:[B
    goto/16 :goto_1

    .line 149
    .end local v4           #data:[B
    .end local v6           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    const/4 v13, 0x0

    new-array v4, v13, [B

    .restart local v4       #data:[B
    goto/16 :goto_1

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v13, :cond_9

    .line 161
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 163
    :cond_9
    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2
.end method
