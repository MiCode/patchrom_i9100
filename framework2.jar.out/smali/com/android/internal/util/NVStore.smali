.class public Lcom/android/internal/util/NVStore;
.super Ljava/lang/Object;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NVStore$datatype;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBKEY_MT_PWD:Ljava/lang/String; = "mt_pwd"

.field private static final DBKEY_MT_STATE:Ljava/lang/String; = "mt_state"

.field private static final DEFAULT_IMSI:Ljava/lang/String; = "0000"

.field private static final DEFAULT_PHPWD:Ljava/lang/String; = "00000000"

.field private static final DEFAULT_RETURN_STR:Ljava/lang/String; = "none"

.field private static final DEFAULT_SENDER_NAME:Ljava/lang/String; = "Not Mentioned"

.field private static final DEFAULT_SMS_MSG:Ljava/lang/String; = "Keep this message."

.field private static final LOG_TAG:Ljava/lang/String; = "NVStore"

.field private static final MT_FILE:Ljava/lang/String; = "/system/mobiletracker.txt"

.field private static final OEM_FUNCTION_ID_RFS:I = 0x13

.field private static final OEM_RFS_NV_MOBILE_TRACKER:I = 0x1

.field private static final OEM_WRITE_EVENT_DONE:I = 0x7d1


# instance fields
.field mContext:Landroid/content/Context;

.field mNvData:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v6, ";"

    invoke-direct {v1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 114
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 115
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    .line 123
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 124
    goto :goto_0
.end method

.method public GetPhPWD()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 84
    iget-object v4, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v3

    .line 88
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v5, ";"

    invoke-direct {v1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 91
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 92
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_2
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    .line 100
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_0

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 103
    aget-object v3, v2, v6

    goto :goto_0
.end method

.method public GetRec1()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 158
    const-string v3, "none"

    .line 174
    :goto_0
    return-object v3

    .line 160
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 163
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 170
    const-string v3, "none"

    goto :goto_0

    .line 174
    :cond_2
    const/4 v3, 0x3

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 180
    const-string v3, "none"

    .line 196
    :goto_0
    return-object v3

    .line 182
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 185
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 192
    const-string v3, "none"

    goto :goto_0

    .line 196
    :cond_2
    const/4 v3, 0x4

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec3()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 201
    const-string v3, "none"

    .line 217
    :goto_0
    return-object v3

    .line 203
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 206
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 207
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 213
    const-string v3, "none"

    goto :goto_0

    .line 217
    :cond_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec4()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 222
    const-string v3, "none"

    .line 238
    :goto_0
    return-object v3

    .line 224
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 227
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 228
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 234
    const-string v3, "none"

    goto :goto_0

    .line 238
    :cond_2
    const/4 v3, 0x6

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec5()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 243
    const-string v3, "none"

    .line 259
    :goto_0
    return-object v3

    .line 245
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 248
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 249
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 255
    const-string v3, "none"

    goto :goto_0

    .line 259
    :cond_2
    const/4 v3, 0x7

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetSenderName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 133
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 134
    const-string v3, "Not Mentioned"

    .line 151
    :goto_0
    return-object v3

    .line 136
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 139
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 146
    const-string v3, "Not Mentioned"

    goto :goto_0

    .line 148
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    .line 149
    const-string v3, "Not Mentioned"

    goto :goto_0

    .line 151
    :cond_3
    aget-object v3, v2, v5

    goto :goto_0
.end method

.method public GetSmsMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 263
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 264
    const-string v3, "Keep this message."

    .line 280
    :goto_0
    return-object v3

    .line 266
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 269
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 270
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_1
    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    .line 276
    const-string v3, "Keep this message."

    goto :goto_0

    .line 277
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_3

    .line 278
    const-string v3, "Keep this message."

    goto :goto_0

    .line 280
    :cond_3
    aget-object v3, v2, v5

    goto :goto_0
.end method

.method public GetStoredIMSI()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 285
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 286
    const-string v3, "0000"

    .line 302
    :goto_0
    return-object v3

    .line 288
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 291
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 292
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 298
    const-string v3, "0000"

    goto :goto_0

    .line 299
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    .line 300
    const-string v3, "0000"

    goto :goto_0

    .line 302
    :cond_3
    aget-object v3, v2, v5

    goto :goto_0
.end method

.method public GetStoredIMSI2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public IsPhLockeEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v3

    .line 337
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v5, ";"

    invoke-direct {v1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 340
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 341
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_2
    const/16 v4, 0xb

    if-lt v0, v4, :cond_0

    .line 351
    const/16 v4, 0xa

    aget-object v4, v2, v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 353
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public ReaddataFromNv()Ljava/lang/String;
    .locals 12

    .prologue
    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 366
    .local v7, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 371
    .local v0, data:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/system/mobiletracker.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, fname:Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .local v4, fIn:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 378
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    const/16 v10, 0x100

    :try_start_2
    new-array v6, v10, [C

    .line 381
    .local v6, inputBuffer:[C
    invoke-virtual {v8, v6}, Ljava/io/InputStreamReader;->read([C)I

    .line 382
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 383
    .local v9, readString:Ljava/lang/String;
    move-object v0, v9

    .line 400
    if-eqz v8, :cond_0

    .line 403
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 407
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 410
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    move-object v1, v0

    .line 415
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #fname:Ljava/lang/String;
    .end local v6           #inputBuffer:[C
    .end local v9           #readString:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 388
    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 400
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v7, :cond_2

    .line 403
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 407
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 410
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_5
    move-object v1, v0

    .line 412
    .end local v0           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    goto :goto_2

    .line 393
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #data:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 400
    .local v2, e:Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_4

    .line 403
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 407
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 410
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_8
    move-object v1, v0

    .line 412
    .end local v0           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    goto :goto_2

    .line 399
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #data:Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 400
    :goto_9
    if-eqz v7, :cond_6

    .line 403
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 407
    :cond_6
    :goto_a
    if-eqz v3, :cond_7

    .line 410
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 412
    :cond_7
    :goto_b
    throw v10

    .line 404
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v5       #fname:Ljava/lang/String;
    .restart local v6       #inputBuffer:[C
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    .restart local v9       #readString:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_0

    .line 411
    :catch_3
    move-exception v10

    goto :goto_1

    .line 404
    .end local v4           #fIn:Ljava/io/FileInputStream;
    .end local v5           #fname:Ljava/lang/String;
    .end local v6           #inputBuffer:[C
    .end local v8           #isr:Ljava/io/InputStreamReader;
    .end local v9           #readString:Ljava/lang/String;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catch_4
    move-exception v10

    goto :goto_4

    .line 411
    :catch_5
    move-exception v10

    goto :goto_5

    .line 404
    .local v2, e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_7

    .line 411
    :catch_7
    move-exception v10

    goto :goto_8

    .line 404
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_a

    .line 411
    :catch_9
    move-exception v11

    goto :goto_b

    .line 399
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v5       #fname:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_9

    .line 393
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_6

    .line 388
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_d
    move-exception v2

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V
    .locals 8
    .parameter "data"
    .parameter "type"

    .prologue
    .line 420
    const-string v2, ""

    .line 421
    .local v2, newdata:Ljava/lang/String;
    const/4 v3, 0x0

    .line 422
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 424
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->PHPWD:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "1"

    .line 429
    .local v1, mtStatus:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .end local v1           #mtStatus:Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 462
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 464
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mt_pwd"

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 466
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mt_state"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    :cond_0
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, fname:Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 480
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 497
    if-eqz v4, :cond_a

    .line 501
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 506
    .end local v0           #fname:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_3
    return-void

    .line 427
    :cond_2
    const-string v1, "0"

    goto/16 :goto_0

    .line 434
    :cond_3
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v1, "1"

    .line 439
    .restart local v1       #mtStatus:Ljava/lang/String;
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    goto/16 :goto_1

    .line 438
    .end local v1           #mtStatus:Ljava/lang/String;
    :cond_4
    const-string v1, "0"

    goto/16 :goto_4

    .line 444
    :cond_5
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_7

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v1, "1"

    .line 449
    .restart local v1       #mtStatus:Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    goto/16 :goto_1

    .line 447
    .end local v1           #mtStatus:Ljava/lang/String;
    :cond_6
    const-string v1, "0"

    goto/16 :goto_5

    .line 457
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 468
    :cond_8
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mt_state"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 502
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fname:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 503
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 485
    .end local v0           #fname:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 497
    :goto_6
    if-eqz v3, :cond_1

    .line 501
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 502
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 488
    :catch_3
    move-exception v5

    .line 497
    :goto_7
    if-eqz v3, :cond_1

    .line 501
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 502
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .line 491
    :catch_5
    move-exception v5

    .line 497
    :goto_8
    if-eqz v3, :cond_1

    .line 501
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_3

    .line 502
    :catch_6
    move-exception v5

    goto/16 :goto_3

    .line 495
    :catchall_0
    move-exception v5

    .line 497
    :goto_9
    if-eqz v3, :cond_9

    .line 501
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 503
    :cond_9
    :goto_a
    throw v5

    .line 502
    :catch_7
    move-exception v6

    goto :goto_a

    .line 495
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fname:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 491
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 488
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 485
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_a
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method
