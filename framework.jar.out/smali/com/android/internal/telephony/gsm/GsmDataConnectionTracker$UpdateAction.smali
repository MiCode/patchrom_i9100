.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$UpdateAction;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateAction"
.end annotation


# static fields
.field public static final APN_CHANGED:I = 0x1

.field public static final SIM_LOADED:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$UpdateAction;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
