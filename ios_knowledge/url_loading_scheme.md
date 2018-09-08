url loading scheme

1. simple objects - NSURLSession - get NSData or file
2. complicated - NSURLURLRequest that provides data for NSURLSession


Default sessions behave similarly to other Foundation methods for downloading URLs. They use a persistent disk-based cache and store credentials in the user’s keychain.

Ephemeral sessions do not store any data to disk; all caches, credential stores, and so on are kept in RAM and tied to the session. Thus, when your app invalidates the session, they are purged automatically.

Background sessions are similar to default sessions, except that a separate process handles all data transfers. Background sessions have some additional limitations, described in Background Transfer Considerations.

types of tasks
data
download
upload

1. configuration
2. session
3. task
4. resume task

lthough your app can (and typically should) add more than one task to a session, for simplicity, the remaining steps describe the life cycle in terms of a single task.

Note: NSURLSession does not report server errors through the error parameter. The only errors your app receives through the error parameter are client-side errors, such as being unable to resolve the hostname or connect to the host. The error codes are described in URL Loading System Error Codes.
Server-side errors are reported through the HTTP status code in the NSHTTPURLResponse object. For more information, read the documentation for the NSHTTPURLResponse and NSURLResponse classes.