.class final Landroid/app/SpellScroll$1;
.super Ljava/lang/Object;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/SpellScroll;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 617
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/SpellScroll;
    .locals 1
    .parameter "in"

    .prologue
    .line 619
    new-instance v0, Landroid/app/SpellScroll;

    invoke-direct {v0, p1}, Landroid/app/SpellScroll;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Landroid/app/SpellScroll$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/SpellScroll;
    .locals 1
    .parameter "size"

    .prologue
    .line 623
    new-array v0, p1, [Landroid/app/SpellScroll;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Landroid/app/SpellScroll$1;->newArray(I)[Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method
