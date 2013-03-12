.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "cmdNumber"
    .parameter "code"
    .parameter "message"
    .parameter "rawEvent"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    .line 40
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    .line 41
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .locals 6
    .parameter "events"
    .parameter "matchCode"

    .prologue
    .line 164
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 165
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Lcom/android/server/NativeDaemonEvent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 166
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static isClassUnsolicited(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 105
    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .locals 8
    .parameter "rawEvent"

    .prologue
    .line 126
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, parsed:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 128
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguments"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_0
    const/4 v5, 0x0

    .line 135
    .local v5, skiplength:I
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, code:I
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 141
    const/4 v0, -0x1

    .line 142
    .local v0, cmdNumber:I
    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    array-length v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 144
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguemnts"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    .end local v0           #cmdNumber:I
    .end local v1           #code:I
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "problem parsing code"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 147
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #cmdNumber:I
    .restart local v1       #code:I
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 154
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, message:Ljava/lang/String;
    new-instance v6, Lcom/android/server/NativeDaemonEvent;

    invoke-direct {v6, v0, v1, v3, p0}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 149
    .end local v3           #message:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 150
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "problem parsing cmdNumber"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .parameter "rawEvent"

    .prologue
    const/16 v14, 0x22

    const/16 v13, 0x20

    const/4 v12, -0x1

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, DEBUG_ROUTINE:Z
    const-string v1, "unescapeArgs"

    .line 191
    .local v1, LOGTAG:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v6, parsed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 193
    .local v3, length:I
    const/4 v2, 0x0

    .line 194
    .local v2, current:I
    const/4 v9, -0x1

    .line 195
    .local v9, wordEnd:I
    const/4 v7, 0x0

    .line 198
    .local v7, quoted:Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_0

    .line 199
    const/4 v7, 0x1

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 202
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_7

    .line 204
    if-eqz v7, :cond_4

    .line 205
    move v9, v2

    .line 206
    :goto_1
    invoke-virtual {p0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 207
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_3

    .line 217
    :cond_1
    :goto_2
    if-ne v9, v12, :cond_2

    move v9, v3

    .line 218
    :cond_2
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, word:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v2, v10

    .line 220
    if-nez v7, :cond_5

    .line 221
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 226
    :goto_3
    const-string v10, "\\\\"

    const-string v11, "\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 227
    const-string v10, "\\\""

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 230
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 234
    .local v5, nextSpace:I
    const-string v10, " \""

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 238
    .local v4, nextQuote:I
    if-le v4, v12, :cond_6

    if-gt v4, v5, :cond_6

    .line 239
    const/4 v7, 0x1

    .line 240
    add-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 210
    .end local v4           #nextQuote:I
    .end local v5           #nextSpace:I
    .end local v8           #word:Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_2

    .line 223
    .restart local v8       #word:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 242
    .restart local v4       #nextQuote:I
    .restart local v5       #nextSpace:I
    :cond_6
    const/4 v7, 0x0

    .line 243
    if-le v5, v12, :cond_0

    .line 244
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 252
    .end local v4           #nextQuote:I
    .end local v5           #nextSpace:I
    .end local v8           #word:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-eq v0, p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public getCmdNumber()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 1
    .parameter "n"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 183
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 184
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassContinue()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassOk()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassServerError()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method
