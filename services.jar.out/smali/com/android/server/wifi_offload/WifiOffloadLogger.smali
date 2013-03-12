.class public Lcom/android/server/wifi_offload/WifiOffloadLogger;
.super Ljava/lang/Object;
.source "WifiOffloadLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WifiOffloadLogger"

.field private static final sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private mBuffer:[Ljava/lang/String;

.field private final mBufferSize:I

.field private mPos:I

.field private mPrefixDate:Z

.field private final mReceivingLine:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "bufferSize"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 51
    iput p1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->initBuffer()V

    .line 53
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "bufferSize"
    .parameter "prefixDate"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 56
    iput-boolean p2, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPrefixDate:Z

    .line 57
    iput p1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->initBuffer()V

    .line 59
    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPrefixDate:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi_offload/WifiOffloadLogger;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    aput-object p1, v1, v2

    .line 74
    iget v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    .line 75
    iget v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    iget v2, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    if-lt v1, v2, :cond_1

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    .line 78
    :cond_1
    return-void
.end method

.method private initBuffer()V
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method getLines()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    .line 92
    .local v4, start:I
    iget v1, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    .line 94
    .local v1, pos:I
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBuffer:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 95
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    rem-int v1, v5, v6

    .line 99
    if-ne v1, v4, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 102
    .local v2, ret:[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    return-object v2
.end method

.method public logLastDiscourse()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->logLastDiscourse(Z)V

    .line 113
    return-void
.end method

.method public logLastDiscourse(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .parameter "writer"
    .parameter "prefix"

    .prologue
    .line 132
    const-string v4, "WifiOffloadLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last activities: [Current Position - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 134
    .local v3, r:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v3           #r:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public logLastDiscourse(Z)V
    .locals 7
    .parameter "useError"

    .prologue
    .line 121
    const-string v4, "WifiOffloadLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last activities: [Current Position - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi_offload/WifiOffloadLogger;->mBufferSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 123
    .local v3, r:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 124
    const-string v4, "WifiOffloadLogger"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const-string v4, "WifiOffloadLogger"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v3           #r:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public logString(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->addLine(Ljava/lang/String;)V

    .line 83
    return-void
.end method
