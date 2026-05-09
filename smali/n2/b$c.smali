.class public final Ln2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln2/b;->j(Ljava/lang/ref/WeakReference;Ln2/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ln2/d;

.field public final synthetic d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ln2/d;Ljava/lang/ref/WeakReference;Z)V
    .registers 4

    iput-object p1, p0, Ln2/b$c;->c:Ln2/d;

    iput-object p2, p0, Ln2/b$c;->d:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Ln2/b$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Ln2/b$c;->c:Ln2/d;

    iget-object p2, p0, Ln2/b$c;->d:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Ln2/b$c;->b:Z

    const/4 v1, 0x2

    invoke-static {v1, p1, p2, v0}, Ln2/b;->f(ILn2/d;Ljava/lang/ref/WeakReference;Z)Z

    return-void
.end method
