.class synthetic Lcom/sec/android/internal/ims/IMSService$17;
.super Ljava/lang/Object;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$NetworkInfo$State:[I

.field static final synthetic $SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2576
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->values()[Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 1299
    :goto_2
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$android$net$NetworkInfo$State:[I

    :try_start_3
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$android$net$NetworkInfo$State:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 2576
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
