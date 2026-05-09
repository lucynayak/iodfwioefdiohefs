.class Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CllWrapper"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cll:Lcom/microsoft/cll/android/AndroidCll;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/AndroidCll;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->cll:Lcom/microsoft/cll/android/AndroidCll;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCll()Lcom/microsoft/cll/android/AndroidCll;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->cll:Lcom/microsoft/cll/android/AndroidCll;

    return-object v0
.end method
