.class public Landroid/hardware/contextaware/CAMovingContext;
.super Ljava/lang/Object;
.source "CAMovingContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/contextaware/CAMovingContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mode:I

.field private move:I

.field private step:I

.field private transMethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Landroid/hardware/contextaware/CAMovingContext$1;

    invoke-direct {v0}, Landroid/hardware/contextaware/CAMovingContext$1;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/CAMovingContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/CAMovingContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAMovingContext;->transMethod:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAMovingContext;->move:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAMovingContext;->mode:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/CAMovingContext;->step:I

    .line 168
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->mode:I

    return v0
.end method

.method public getMove()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->move:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->step:I

    return v0
.end method

.method public getTransMethod()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->transMethod:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 112
    iput p1, p0, Landroid/hardware/contextaware/CAMovingContext;->mode:I

    .line 113
    return-void
.end method

.method public setMove(I)V
    .locals 0
    .parameter "move"

    .prologue
    .line 93
    iput p1, p0, Landroid/hardware/contextaware/CAMovingContext;->move:I

    .line 94
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 131
    iput p1, p0, Landroid/hardware/contextaware/CAMovingContext;->step:I

    .line 132
    return-void
.end method

.method public setTransMethod(I)V
    .locals 0
    .parameter "transMethod"

    .prologue
    .line 74
    iput p1, p0, Landroid/hardware/contextaware/CAMovingContext;->transMethod:I

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 151
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->transMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->move:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/hardware/contextaware/CAMovingContext;->step:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
