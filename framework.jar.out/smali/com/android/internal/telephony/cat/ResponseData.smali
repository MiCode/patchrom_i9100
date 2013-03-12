.class abstract Lcom/android/internal/telephony/cat/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeLength(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .parameter "buf"
    .parameter "length"

    .prologue
    .line 38
    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    .line 39
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/io/ByteArrayOutputStream;)V
.end method
