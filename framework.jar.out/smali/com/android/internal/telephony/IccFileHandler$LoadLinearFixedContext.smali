.class Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLinearFixedContext"
.end annotation


# instance fields
.field countRecords:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field recordNum:I

.field recordSize:I

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
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 144
    iput p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 145
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    .line 147
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 152
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    .line 154
    return-void
.end method
