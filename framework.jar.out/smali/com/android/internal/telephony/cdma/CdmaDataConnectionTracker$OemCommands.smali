.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$OemCommands;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# static fields
.field static final OEM_DATA_EVDO_FAST_DORMANCY:I = 0x2

.field static final OEM_FUNCTION_ID_DATA:I = 0xd


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$OemCommands;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
