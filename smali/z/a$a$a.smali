.class public final Lz/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/a$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lz/a$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
