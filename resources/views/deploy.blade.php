<!-- resources/views/deploy.blade.php -->
<form action="/deploy" method="POST">
    @csrf
    <input type="text" name="repo" placeholder="Enter repo" required>
    <input type="text" name="subdomain" placeholder="Enter subdomain" required>
    <button type="submit">Create Subdomain</button>
</form>
