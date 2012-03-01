.class final Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccIoArgument"
.end annotation


# instance fields
.field public command:I

.field public fileId:I

.field public filePath:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .parameter "fileId"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->fileId:I

    .line 189
    iput p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->command:I

    .line 190
    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p1:I

    .line 191
    iput p4, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p2:I

    .line 192
    iput p5, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p3:I

    .line 193
    iput-object p6, p0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->filePath:Ljava/lang/String;

    .line 194
    return-void
.end method
