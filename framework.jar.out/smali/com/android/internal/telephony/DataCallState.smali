.class public Lcom/android/internal/telephony/DataCallState;
.super Ljava/lang/Object;
.source "DataCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataCallState$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataCallState;->DBG:Z

    .line 40
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->LOG_TAG:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 56
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 18
    .parameter "linkProperties"
    .parameter "okToUseSystemPropertyDns"

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 118
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 122
    .restart local p1
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v16, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 123
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "net."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, propertyPrefix:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v11, :cond_8

    aget-object v1, v4, v8

    .line 132
    .local v1, addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_2

    .line 131
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 120
    .end local v1           #addr:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #propertyPrefix:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 137
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #propertyPrefix:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, ap:[Ljava/lang/String;
    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 139
    const/4 v15, 0x0

    aget-object v1, v3, v15

    .line 140
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 146
    .local v2, addrPrefixLen:I
    :goto_3
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 150
    .local v9, ia:Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_0

    .line 151
    if-nez v2, :cond_3

    .line 153
    instance-of v15, v9, Ljava/net/Inet4Address;

    if-eqz v15, :cond_6

    const/16 v2, 0x20

    .line 155
    :cond_3
    :goto_4
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addr/pl="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v9, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 157
    .local v10, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 227
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v3           #ap:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #ia:Ljava/net/InetAddress;
    .end local v10           #la:Landroid/net/LinkAddress;
    .end local v11           #len$:I
    :catch_0
    move-exception v7

    .line 228
    .local v7, e:Ljava/net/UnknownHostException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 230
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 241
    .end local v7           #e:Ljava/net/UnknownHostException;
    .end local v12           #propertyPrefix:Ljava/lang/String;
    .local v13, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :goto_5
    sget-object v15, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v13, v15, :cond_4

    .line 243
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " result="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 253
    :cond_4
    return-object v13

    .line 142
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v3       #ap:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #propertyPrefix:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #addrPrefixLen:I
    goto/16 :goto_3

    .line 147
    :catch_1
    move-exception v7

    .line 148
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric ip addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 153
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #ia:Ljava/net/InetAddress;
    :cond_6
    const/16 v2, 0x80

    goto/16 :goto_4

    .line 161
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v3           #ap:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #ia:Ljava/net/InetAddress;
    .end local v11           #len$:I
    :cond_7
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "no address for ifname="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 165
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_b

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v11, v4

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_f

    aget-object v1, v4, v8

    .line 167
    .restart local v1       #addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v15

    if-eqz v15, :cond_a

    .line 166
    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 171
    :cond_a
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    .line 175
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_9

    .line 176
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_7

    .line 172
    .end local v9           #ia:Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    .line 173
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 179
    .end local v1           #addr:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    .line 180
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    .line 181
    .local v6, dnsServers:[Ljava/lang/String;
    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "dns1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 182
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "dns2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 183
    move-object v4, v6

    array-length v11, v4

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v11, :cond_f

    aget-object v5, v4, v8

    .line 184
    .local v5, dnsAddr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v15

    if-eqz v15, :cond_d

    .line 183
    :cond_c
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 188
    :cond_d
    :try_start_7
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v9

    .line 192
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_c

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_9

    .line 189
    .end local v9           #ia:Ljava/net/InetAddress;
    :catch_3
    move-exception v7

    .line 190
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 197
    .end local v5           #dnsAddr:Ljava/lang/String;
    .end local v6           #dnsServers:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v15, Ljava/net/UnknownHostException;

    const-string v16, "Empty dns response and no system default dns"

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 201
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v15, v15

    if-nez v15, :cond_11

    .line 202
    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "gw"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, sysGateways:Ljava/lang/String;
    if-eqz v14, :cond_13

    .line 204
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 209
    .end local v14           #sysGateways:Ljava/lang/String;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v11, v4

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v11, :cond_15

    aget-object v1, v4, v8

    .line 210
    .restart local v1       #addr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 209
    :cond_12
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 206
    .end local v1           #addr:Ljava/lang/String;
    .restart local v14       #sysGateways:Ljava/lang/String;
    :cond_13
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    .line 214
    .end local v14           #sysGateways:Ljava/lang/String;
    .restart local v1       #addr:Ljava/lang/String;
    :cond_14
    :try_start_9
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v9

    .line 218
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_a
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_12

    .line 219
    new-instance v15, Landroid/net/RouteInfo;

    invoke-direct {v15, v9}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_c

    .line 215
    .end local v9           #ia:Ljava/net/InetAddress;
    :catch_4
    move-exception v7

    .line 216
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric gateway addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 223
    .end local v1           #addr:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_15
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_5

    .line 233
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #propertyPrefix:Ljava/lang/String;
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/DataCallState;->version:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_17

    .line 234
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_5

    .line 236
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_17
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 78
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "DataCallState: {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " retry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' ifname=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v5, "\' addresses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 89
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0           #addr:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    const-string v5, "] dnses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 95
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 99
    :cond_3
    const-string v5, "] gateways=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 101
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    .end local v0           #addr:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 105
    :cond_5
    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
