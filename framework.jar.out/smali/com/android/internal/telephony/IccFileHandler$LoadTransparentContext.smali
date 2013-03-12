.class Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field binSize:I

.field countPhases:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field phaseNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "phaseNum"
    .parameter "onLoaded"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 170
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 171
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 173
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->efid:I

    .line 177
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 178
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 179
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 180
    return-void
.end method
